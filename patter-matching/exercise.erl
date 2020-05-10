-module(exercise).

-export([how_many_equal/3, max_three/3, test/0, xor1/2, xor2/2]).

% Some xor implementations
xor1(X, Y) -> X =/= Y.

% Another xor implementantion
xor2(X, Y) -> not X == Y.

% Find how many elements are equals
how_many_equal(_X, _X, _X) -> 3;
how_many_equal(_X, _X, _Y) -> 2;
how_many_equal(_X, _Y, _X) -> 2;
how_many_equal(_Y, _X, _X) -> 2;
how_many_equal(_, _, _) -> 0.

% Fin max of three numbers
max_three(X, Y, Z) -> max(max(X, Y), Z).


% Test time!
test() ->
    % Test for xor1
    true = xor1(true, false),
    true = xor1(false, true),
    false = xor1(false, false),
    false = xor1(true, true),
    % Test for xor2
    true = xor2(true, false),
    true = xor2(false, true),
    false = xor2(false, false),
    false = xor2(true, true),
    % Test how_many_equal
    0 = how_many_equal(34, 25, 36),
    2 = how_many_equal(34, 25, 34),
    3 = how_many_equal(34, 34, 34),
    % Test max_three
    36 = max_three(34,25,36),
    'All test passed! ✅'.