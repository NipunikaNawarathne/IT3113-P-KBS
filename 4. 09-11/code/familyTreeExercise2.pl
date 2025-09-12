mother(mary, jhon).
mother(mary, anna).
mother(susan, mary).

father(peter, jhon).
father(peter, anna).
father(george, mary).


parent(X, Y):- mother(X, Y); father(X, Y).
grandparent(X, Y):- parent(X, Z), parent(Z, Y).
ancestor(X, Y):- parent(X, Y); grandparent(X, Y).
sibling(X, Y):- mother(A, X), mother(A, Y), father(B, X), father(B, Y), X\==Y.
