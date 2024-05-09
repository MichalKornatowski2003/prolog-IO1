f0(X, Y):-between(4, 6, X),
         between(X, 7, Y).

f0(8, 8).

f1(X, Y):-!,
         between(4, 6, X),
         between(X, 7, Y).

f1(8, 8).

f2(X, Y):-between(4, 6, X),
          !,
          between(X, 7, Y).

f2(8, 8).

f3(X, Y):-between(4, 6, X),
          between(X, 7, Y),
          !.

f3(8, 8).
