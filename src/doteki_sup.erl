% @hidden
-module(doteki_sup).
-behaviour(supervisor).

-export([
         start_link/0
         , stop_child/1
         , start_child/1
         , get_first/2
        ]).
-export([init/1]).

start_link() ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).

stop_child(Pid) when is_pid(Pid) ->
  supervisor:terminate_child(?MODULE, Pid).

start_child(Args) ->
  case supervisor:start_child(?MODULE, [Args]) of
    {ok, Child, _} ->
      ok = doteki_ds:insert(Args, Child),
      {ok, Child};
    Other ->
      Other
  end.

get_first(Path, Default) ->
  get_first(Path, Default, doteki_ds:exist()).

get_first(Path, Default, true) ->
  get_first(
    doteki_ds:all(),
    Path,
    correlation_key(),
    Default);
get_first(_, Default, false) ->
  Default.

get_first([], _, _, Default) -> Default;
get_first([{_, Pid}|Rest], Path, CorrelationKey, Default) ->
  case gen_server:call(Pid, {get_env, Path, CorrelationKey}) of
    CorrelationKey ->
      get_first(Rest, Path, CorrelationKey, Default);
    Value ->
      Value
  end.

init([]) ->
  {ok, {
     #{strategy => simple_one_for_one,
       intensity => 0,
       period => 1},
     [
      #{id => doteki_prv_external,
         start => {doteki_prv_external, start_link, []},
         type => worker,
         shutdown => 5000}
     ]
    }}.

correlation_key() ->
  <<"DOTEKI-", (correlation_key(128))/binary, "-", (correlation_key(128))/binary>>.
correlation_key(Bits) ->
  Bytes = (Bits + 7) div 8,
  <<Result:Bits/bits, _/bits>> = crypto:strong_rand_bytes(Bytes),
  Result.

