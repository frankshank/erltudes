-module(exceptionTester).
-compile(export_all).


justThrow(Afunc) ->
    try Afunc() of
        _ -> goodToGo
    catch error:Ex -> {error, caught, Ex}
    end.

deluxe(Afunc) ->
    try Afunc() of
        _ -> goodToGo
    catch
        throw:V -> "throw case " ++ V;
        error:V -> "error case " ++ V;
        exist:V -> "exit case " ++ V;
        _:_ -> "default"
    end.
