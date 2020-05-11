-module(tail_recursion).

-export([fib/1, perfect/1]).

% Tail recursion for Fibonacci
fib(0, R, _) -> R;
fib(N, R, A) when N > 0 -> fib(N - 1, A, R + A).

% Tail recursion for find perfect number
perfect(N, D, A) when D > 0 ->
    S = case N rem D of
	  0 -> A + D;
	  _ -> A
	end,
    perfect(N, D - 1, S);
perfect(N, 0, A) -> N == A.

% Fibonacci function
fib(N) -> fib(N, 0, 1).

% Indicates if a number is perfect
perfect(N) -> perfect(N, N - 1, 0).
