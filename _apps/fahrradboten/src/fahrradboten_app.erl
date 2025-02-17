%%%-------------------------------------------------------------------
%% @doc fahrradboten public API
%% @end
%%%-------------------------------------------------------------------

-module('fahrradboten_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'fahrradboten_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
