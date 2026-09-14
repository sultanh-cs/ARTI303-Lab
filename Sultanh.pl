% ===== Facts =====
male(salem).
male(omar).
male(fahad).

female(hana).
female(sultanh).
female(qamar).
female(wasan).

parent(salem, omar).
parent(salem, hana).
parent(salem, sultanh).
parent(omar, qamar).
parent(omar, wasan).
parent(hana, fahad).

% ===== Rules =====
father(F, C) :- parent(F, C), male(F).

mother(M, C) :- parent(M, C), female(M).

sister(S, P) :-
    female(S),
    parent(Par, S),
    parent(Par, P),
    S \= P.

brother(B, P) :-
    male(B),
    parent(Par, B),
    parent(Par, P),
    B \= P.
