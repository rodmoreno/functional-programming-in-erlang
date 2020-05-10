-module(second).

-export([areaT/2, hypotenuse/2, perimeterT/2]).

hypotenuse(A, B) ->
    math:sqrt(first:square(A) + first:square(B)).

areaT(X, Y) -> first:mult(X, Y) / 2.

perimeterT(X, Y) -> X + Y + hypotenuse(X, Y).
