language(prolog).

/*1*/ urodzony(jan, 1974).
/*2*/ urodzony(ludwik, 1976).
/*3*/ urodzony(maciej, 1960).
/*4*/ urodzony(grzegorz, 1975).

/*5*/ starszy(X, Y) :- urodzony(X, Xrok), urodzony(Y, Yrok), Yrok>Xrok.
