language(prolog).

% element(E, L)
% spełniony, gdy E jest elementem listy L
% warunek kończący rekurencję: głowa listy jest elementem listy
element(E, [EI_]).
% rekurencja: jeżeli E jest elementem listy L, a nie jest jej głową, to jest elementem ogona
element(E, [IT]):-element(E,T).

/*
?- element(2, [1, 2, 3]).
true.

?- element(4, [1, 2, 3]).
false.
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/

/*
[trace] 12 ?- element (X, [1,2,1]).
Call: (6) element (_G2697, [1, 2, 1]) ? creep element (1, [1, 2, 1]) ? creep
Exit: (6)
X = 1;
Redo: (6)
element (_G2697, [1, 2, 1]) ? creep Call: (7) element (_G2697, [2, 1]) ? creep
Exit: (7) element (2, Exit: (6) element (2, [1,
X = 2;
[2,
1]) ? creep
2, 1]) ? creep
Redo: (7) Call: (8) element (_G2697,
element (_G2697, [2, 1]) ? creep
[1]) ? creep
Exit: (8) element (1, [1]) ? creep
Exit: (7) element (1, [2, 1]) ? creep Exit: (6) element (1, [1, 2, 1]) ? creep X = 1;
Redo: (8) element (_G2697, [1]) ? creep Call: (9) element (_G2697, []) ? creep Fail: (9) element (_G2697, []) ? creep Fail: (8) element (_G2697, [1]) ? creep
Fail: (7) element (_G2697, [2, 1]) ? creep Fail: (6) element (_G2697, [1, 2, 1]) ? creep false.
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/

