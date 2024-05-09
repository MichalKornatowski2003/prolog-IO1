language(prolog).

/*1*/rodzic(ewa, ania).
/*2*/rodzic(piotr, ewa).

/*3*/przodek(X, Y) :- rodzic(X, Y).
/*4*/przodek(X, Y) :- rodzic(X, Z), przodek(Z, Y).
 
