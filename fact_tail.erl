-module(fact_tail).
-export([factorial/1]).

factorial(N) ->
  factorial(1, N, 1).

factorial(Current, N, Result) when Current =< N ->
  NewResult = Current * Result,
  factorial(Current+1, N, NewResult);

factorial(_, N, Result) ->
  io:format("++factorial ~w -> ~w~n", [N, Result]).

