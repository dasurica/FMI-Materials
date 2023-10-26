female(mary).
female(sandra).
female(juliet).
female(lisa).
male(peter).
male(paul).
male(dony).
male(bob).
male(harry).
parent(bob, lisa).
parent(bob, paul).
parent(bob, mary).
parent(juliet, lisa).
parent(juliet, paul).
parent(juliet, mary).
parent(peter, harry).
parent(lisa, harry).
parent(mary, dony).
parent(mary, sandra).

% not_parent(X,Y):- \+ parent(X, Y).
not_parent(X, Y):-
    (male(X); female(X)),
    (male(Y); female(Y)),
    X \= Y,
    \+ parent(X, Y).
