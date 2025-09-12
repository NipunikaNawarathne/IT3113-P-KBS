male(donald).
male(regan).
male(john).
male(newton).
male(harry).
male(william).

female(aniya).
female(roshi).
female(melaniya).
female(andriya).

parent_of(donald, melaniya).
parent_of(donald, andriya).
parent_of(aniya, melaniya).
parent_of(aniya, andriya).
parent_of(regan, newton).
parent_of(roshi, newton).
parent_of(john, harry).
parent_of(melaniya, harry).
parent_of(andriya, william).
parent_of(newton, william).

father_of(X, Y) :- parent_of(X, Y), male(X).
mother_of(X, Y) :- parent_of(X, Y), female(X).

grandfather_of(X, Y) :- parent_of(X, Z), parent_of(Z, Y) , male(X).
grandmother_of(X, Y) :- parent_of(X, Z), parent_of(Z, Y) , female(X).

%sister_of(X, Y) :- parent_of(Z, X), parent_of(Z, Y), female(X), X\==Y.
sister_of(X, Y) :- mother_of(M, X), mother_of(M, Y), father_of(F, X), father_of(F, Y), female(X), X\==Y.

%brother_of(X, Y) :- parent_of(Z, X), parent_of(Z, Y), male(X), X\==Y.
brother_of(X, Y) :- mother_of(M, X), mother_of(M, Y), father_of(F, X), father_of(F, Y), male(X), X\==Y.

aunt_of(X, Y) :- sister_of(X, Z), parent_of(Z, Y).
uncle_of(X, Y) :- brother_of(X, Z), parent_of(Z, Y).
