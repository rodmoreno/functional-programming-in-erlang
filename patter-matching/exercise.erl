-module(exercise).

-export([howManyEqual/3, maxThree/3, test/0, xor1/2, xor2/2]).

% Some xor implementations
xor1(X, Y) -> X =/= Y.

% Another xor implementantion
xor2(X, Y) -> not X == Y.

% Find how many elements are equals
howManyEqual(_X, _X, _X) -> 3;
howManyEqual(_X, _X, _Y) -> 2;
howManyEqual(_X, _Y, _X) -> 2;
howManyEqual(_Y, _X, _X) -> 2;
howManyEqual(_, _, _) -> 0.

% Fin max of three numbers
maxThree(X, Y, Z) -> max(max(X, Y), Z).


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
    % Test howManyEqual
    0 = howManyEqual(34, 25, 36),
    2 = howManyEqual(34, 25, 34),
    3 = howManyEqual(34, 34, 34),
    % Test maxThree
    36 = maxThree(34,25,36),
    'All test passed! ✅'.