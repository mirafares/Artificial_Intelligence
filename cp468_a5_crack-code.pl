digit(0).
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).

valid_digits(X, Y, Z) :-
    digit(X),
    digit(Y),
    digit(Z),
    X \== Y,
    Y \== Z,
    Z \== X.

clue1(X, Y, Z) :-
    valid_digits(X, Y, Z),
    ((X = 7, Y \== 8, Z \== 3);
     (X \== 7, Y = 8, Z \== 3);
     (X \== 7, Y \== 8, Z = 3)).

clue2(X, Y, Z) :-
    valid_digits(X, Y, Z),
   ((X \== 1, Y = 7, Z \== 6);

    ( X \== 1, Y\== 6, Z = 7);

    ( X = 1, Y \== 6, Z \== 7);

    ( X \== 6, Y\== 7, Z = 1);

    ( X = 6, Y \== 7, Z \== 1);

    ( X \== 1, Y = 6, Z \== 7)).




clue3(X, Y, Z) :-
    valid_digits(X, Y, Z),
    ((X = 0, Y = 3, Z \== 7);
    ( X \== 7, Y = 3, Z = 0);
    ( X = 0, Y \== 7, Z = 3);

    (X = 0, Y = 7, Z \== 3);
    (X \== 3, Y = 7, Z = 0);
    (X = 7, Y \== 3, Z = 0);

    (X = 7, Y\==0, Z = 3);
    (X \== 0, Y = 7, Z = 3);
    (X = 7, Y = 3, Z \== 0)).

clue4(X, Y, Z) :-
    valid_digits(X, Y, Z),
    X \== 4,
    X \== 2,
    X \== 8,
    Y \== 4,
    Y \== 2,
    Y \== 8,
    Z \== 4,
    Z \== 2,
    Z \== 8.


clue5(X, Y, Z) :-
    valid_digits(X, Y, Z),
    ((X \== 8, Y = 4, Z \== 0);
    ( X \== 8, Y\== 0, Z = 4);
    ( X = 8, Y \== 4, Z \== 0);
    ( X \== 4, Y\== 0, Z = 8);
    ( X = 0, Y \== 8, Z \== 4);
    ( X \== 4, Y = 0, Z \== 8)).

crack_code(X, Y, Z) :-
    clue1(X, Y, Z),
    clue2(X, Y, Z),
    clue3(X, Y, Z),
    clue4(X, Y, Z),
    clue5(X, Y, Z).

