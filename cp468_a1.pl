% To run, use the query: go(state(east,3,3,1),state(west,0,0,0)).

% CLAUSES

member(X,[X|_]).
member(X,[_|T]):-
    member(X,T).

move(state(X,L,W,R),state(Y,L1,W1,R1)):-
    opposite(X,Y),
    ((L>0, L1 is L-1, W1 is W, R1 is R) ;
    (W>0, L1 is L, W1 is W-1, R1 is R) ;
    (L>0, W>0, L1 is L-1, W1 is W-1, R1 is R) ;
    (R>0, L1 is L, W1 is W, R1 is R-1)),
    not((L1>W1, Y == west)).

opposite(east, west). % The opposite of east is west
opposite(west, east).

path(S,G,L,L1) :-
    move(S,S1),
    not(member(S1,L)),
    path(S1, G, [S1|L], L1).
% Comment out the following line to get more than one solution
%path(G,G,T,T).

path(G,G,T,T).
    
go(S,G):-
    path(S,G,[S],L),
    write("A solution is: "),
    write(L).
