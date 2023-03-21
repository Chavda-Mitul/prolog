list_mem(X,[X|_]).
list_mem(X,[_|TAIL]) :- list_mem(X,TAIL).

list_len([],0).
list_len([_|TAIL],N) :- list_len(TAIL,N1), N is N1 + 1.

list_con([],L,L).
list_con([X1|L1],L2,[X1|L3]) :- list_con(L1,L2,L3).

list_remove(X, [X], []).
list_remove(X,[X|L1], L1).
list_remove(X, [Y|L2], [Y|L1]) :- list_remove(X,L2,L1).

list_append(A,T,T) :- list_mem(A,T),!.
list_append(A,T,[T|A]).