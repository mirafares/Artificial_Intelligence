% Define the maze
mazeSize(5, 9).
barrier(1, 8).
barrier(2, 2).
barrier(2, 4).
barrier(2, 5).
barrier(3, 4).
barrier(3, 7).
barrier(3, 9).
barrier(4, 4).
barrier(4, 7).
barrier(4, 9).
barrier(5, 2).

% Define valid moves from a given position
move([X, Y], [X, Y1]) :-
    Y1 is Y + 1,
    Y1 =< 9,
    \+ barrier(X, Y1).
move([X, Y], [X, Y1]) :-
    Y1 is Y - 1,
    Y1 >= 1,
    \+ barrier(X, Y1).
move([X, Y], [X1, Y]) :-
    X1 is X + 1,
    X1 =< 5,
    \+ barrier(X1, Y).
move([X, Y], [X1, Y]) :-
    X1 is X - 1,
    X1 >= 1,
    \+ barrier(X1, Y).

% Define a predicate to find a path from From to To
solve(From, To, Path) :-
    solve_helper([From], To, [], Path).

% Define a helper predicate to find a path recursively
solve_helper([To|Path], To, _, Solution) :-
    reverse([To|Path], Solution).
solve_helper([From|Path], To, Tried, Solution) :-
    move(From, Next),
    \+ member(Next, Tried),
    solve_helper([Next,From|Path], To, [Next|Tried], Solution).

