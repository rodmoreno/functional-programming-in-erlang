-module(exercise).

-export([fib/1, pieces/1]).

% Fibonacci function
fib(0) -> 0;
fib(1) -> 1;
fib(N) when N > 1 -> fib(N - 2) + fib(N - 1).

% How many pieces?
pieces(0) -> 1;
pieces(N) when N > 0 -> N + pieces(N - 1).
