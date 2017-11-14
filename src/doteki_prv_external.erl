% @hidden
-module(doteki_prv_external).
-behaviour(gen_server).

%% API
-export([start_link/1]).

%% gen_server callbacks
-export([
         init/1
         , handle_call/3
         , handle_cast/2
         , handle_info/2
         , terminate/2
         , code_change/3
        ]).

-record(state, {
          module,
          module_state
         }).

start_link(Args) ->
  gen_server:start_link(?MODULE, Args, []).

% @hidden
init(Args) ->
  case erlang:apply(Args, init, []) of
    {ok, ModuleState} ->
      ok = doteki_ds:insert(?MODULE, self()),
      {ok, #state{
              module = Args,
              module_state = ModuleState
             }};
    {error, Reason} ->
      {stop, Reason}
  end.

% @hidden
handle_call({get_env, Path, Default}, _From, #state{module = Module, module_state = ModuleState} = State) ->
  {Reply, NewModuleState} = erlang:apply(Module, get_env, [Path, Default, ModuleState]),
  {reply, Reply, State#state{module_state = NewModuleState}}.

% @hidden
handle_cast(_Msg, State) ->
  {noreply, State}.

% @hidden
handle_info(_Info, State) ->
  {noreply, State}.

% @hidden
terminate(_Reason, _State) ->
  ok.

% @hidden
code_change(_OldVsn, State, _Extra) ->
  {ok, State}.
