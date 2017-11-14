-module(doteki_ds).

-export([
         insert/2
         , delete/0
         , delete/1
         , all/0
         , exist/0
        ]).

-define(IF_EXIST(Exec, Else), case exist() of
                                       true -> Exec;
                                       false -> Else
                                     end).

-callback init() -> {ok, any()} | {error, term()}.
-callback get_env(Path :: list(), Default :: term(), State :: any()) -> {undefined | term(), any()}.

% @hidden
insert(Key, Value) ->
  ?IF_EXIST(ok, new()),
  ets:insert(?MODULE, {Key, Value}),
  ok.

% @hidden
delete() ->
  ?IF_EXIST(begin
              ets:delete(?MODULE),
              ok
            end,
            ok).

% @hidden
delete(Key) ->
  ?IF_EXIST(begin
              ets:delete(?MODULE, Key),
              ok
            end,
            ok).

% @hidden
all() ->
  ?IF_EXIST(begin
              keys()
            end,
            []).

% @hidden
exist() ->
  ets:info(?MODULE) /= undefined.

keys() ->
  keys(ets:first(?MODULE)).

keys('$end_of_table') -> [];
keys(Key) ->
  case lookup(Key) of
    {ok, Value} -> [{Key, Value}|keys(ets:next(?MODULE, Key))];
    {error, undefined} -> keys(ets:next(?MODULE, Key))
  end.

lookup(Key) ->
  ?IF_EXIST(case ets:lookup(?MODULE, Key) of
              [{Key, Value}] ->
                {ok, Value};
              _ ->
                {error, undefined}
            end,
            {error, undefined}).

new() ->
  ?IF_EXIST(ok,
            begin
              ets:new(?MODULE, [public, named_table]),
              ok
            end).

