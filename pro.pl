run:-write('This is a Prolog program that find the factorial of a number'),
start.
start:- nl,nl,write('Please enter the number X = '),read(X),
enterd(X). 
enterd(0):-
write('The factorial of a 0 is '),write('1'),nl.
enterd(X):-
X1 is X-1,
entered(X1),
R is S*X,
write('The factorial of the number is'),write(R),nl.