max(X,Y,X) :- X >= Y, !.
max(X,Y,Y) :- X < Y.
max_find(X,Y,Max) :- X>=Y,!, Max = X; Max = Y.
a(X):- b(X),c(X),fail.
a(X):-d(X).
b(1).
b(4).
c(1).
c(3).
d(4).

# to run this program, type a(1) a(4) a(3) a(2). in the console. max(10,20,Maz). 