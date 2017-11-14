-module(doteki_ds_consul).
-behaviour(doteki_ds).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

-export([
         init/0
         , get_env/3
        ]).

init() ->
  {ok, ok}.

get_env(Path, Default, State) ->
  case build_path(Path) of
    [] ->
      {Default, State};
    ConsulPath ->
      build_response(conserl_kv:get(ConsulPath), ConsulPath, State, Default)
  end.

build_path(Path) -> string:join(do_build_path(Path), "/").
do_build_path([]) -> [];
do_build_path([E|Rest]) -> [bucs:to_string(E)|do_build_path(Rest)].

build_response({error, _}, ConsulPath, State, Default) ->
  build_response(conserl_kv:get_all(ConsulPath), ConsulPath, State, Default);
build_response({ok, #{value := Value}}, _, State, _) ->
  {Value, State};
build_response({ok, List}, _, State, _) when is_list(List) ->
  {build_response_list(List, []), State};
build_response(_, _, State, Default) ->
  {Default, State}.

build_response_list([], Acc) ->
  Acc;
build_response_list([#{key := Key, value := Value}|Rest], Acc) ->
  build_response_list(
    Rest,
    add_value(string:split(Key, "/"), Value, Acc));
build_response_list([#{key := Key}|Rest], Acc) ->
  build_response_list(
    Rest,
    add_key(string:split(Key, "/"), Acc)).

add_key([Key, ""], Acc) ->
  AKey = bucs:to_atom(Key),
  case lists:keyfind(AKey, 1, Acc) of
    false ->
      [{AKey, []}|Acc];
    {_, _} ->
      Acc
  end;
add_key([Key, Rest], Acc) ->
  AKey = bucs:to_atom(Key),
  case lists:keyfind(AKey, 1, Acc) of
    false ->
      [{AKey, add_key(string:split(Rest, "/"), [])}|Acc];
    {AKey, DeepAcc} ->
      lists:keyreplace(AKey, 1, Acc, {AKey, add_key(string:split(Rest, "/"), DeepAcc)})
  end.

add_value([Key], Value, Acc) ->
  AKey = bucs:to_atom(Key),
  case lists:keyfind(AKey, 1, Acc) of
    false ->
      [{AKey, Value}|Acc];
    {AKey, _} ->
      lists:keyreplace(AKey, 1, Acc, {AKey, Value})
  end;
add_value([Key, Rest], Value, Acc) ->
  AKey = bucs:to_atom(Key),
  case lists:keyfind(AKey, 1, Acc) of
    false ->
      [{AKey, add_value(string:split(Rest, "/"), Value, [])}|Acc];
    {AKey, DeepAcc} ->
      lists:keyreplace(AKey, 1, Acc, {AKey, add_value(string:split(Rest, "/"), Value, DeepAcc)})
  end.

-ifdef(TEST).
doteki_ds_consul_test_() ->
  {setup,
   fun() ->
       ok
   end,
   fun(_) ->
       ok
   end,
   [
    fun() ->
        ?assertEqual(
           {
            [
             {bar, [
                    {key, "value"},
                    {glop, [
                            {mickey, "mouse"},
                            {donald, "duck"}
                           ]
                    },
                    {baz, [
                           {hello, "World"}
                          ]
                    }
                   ]
             }
            ],
            state
           },
           build_response({ok, [#{create_index => 54393, flags => 0, key => "bar/",
                                  lock_index => 0, modify_index => 54393},
                                #{create_index => 54394, flags => 0, key => "bar/baz/",
                                  lock_index => 0, modify_index => 54394},
                                #{create_index => 54396, flags => 0, key => "bar/baz/hello",
                                  lock_index => 0, modify_index => 54396, value => "World"},
                                #{create_index => 54497, flags => 0, key => "bar/glop/",
                                  lock_index => 0, modify_index => 54497},
                                #{create_index => 54499, flags => 0, key => "bar/glop/donald",
                                  lock_index => 0, modify_index => 54499, value => "duck"},
                                #{create_index => 54498, flags => 0, key => "bar/glop/mickey",
                                  lock_index => 0, modify_index => 54498, value => "mouse"},
                                #{create_index => 54494, flags => 0, key => "bar/key",
                                  lock_index => 0, modify_index => 54494, value => "value"}]},
                          consul_path,
                          state,
                          default
                         )
          )
    end
   ]}.
-endif.

