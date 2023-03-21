male(mahesh).
male(mitul).
male(ram).
male(hira).
male(indra).
male(chirag).
male(yug).
male(aditya).

female(meena).
female(kanta).
female(balu).
female(manjula).
female(varsha).
female(jilu).
female(foram).
female(mansi).


parent(mahesh,mitul).
parent(meena,mitul).
parent(hira,mahesh).
parent(meena,mansi).
parent(mahesh,mansi).
parent(ram,indra).
parent(ram,chirag).
parent(kanta,indra).
parent(kanta,chirag).

couple(ram,kanta).
couple(mahesh,meena).

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).

grandfather(X,Y) :- male(X),parent(X,Some),parent(Some,Y).
brother(X,Y) :- male(X),parent(X,Some),parent(Some,Y). X\==Y
sister(X,Y) :- female(X),parent(X,Some),parent(Some,Y).
uncle(X,Y) :- male(X),brother(X,Some),parent(Some,Y).

