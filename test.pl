count_to_10(10) :- write(10),nl.
count_to_10(X) :-
   write(X),nl,
   Y is X + 1,
   count_to_10(Y).
# countto10(10) :- write(10),nl.
# countto10(X) :- X < 10, write(X),nl, Y is X + 1, countto10(Y).

down(0) :- write(0),nl.
down(X) :- X > 0, write(X),nl, Y is X-1, down(Y).

count(0) :- write(0),nl.
count(X) :- X > 0, Y is X+1, Z is X-1, count(Z), write(Y), nl.

 