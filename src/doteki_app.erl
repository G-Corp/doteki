% @hidden
-module(doteki_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
  doteki_sup:start_link().

stop(_State) ->
  ok.
