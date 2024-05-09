language(prolog).
% konkat (L1,L2,L3)
% spełniony, gdy L3 jest połączeniem list Ll i L2
 
% rekurencja ze względu na liste L1:
 
% warunek kończący rekurencję
% pustej z listą L daje listę L
 
konkat([],L,L).
 
% rekurencja:
% głowa listy L3 jest głową listy L1
 
% ogon listy L3 jest połączeniem ogona listy L1
% z listą L2
 
konkat([H1|T1],L2, [H1|T3]):-
konkat(T1,L2,T3).


/*
?
konkat ([3, 4], [c,4,b], X).
X = [3, 4, c, 4, b].
Podziel liste na części ? konkat (X, Y, [a,b, c]). X = [],
Y = [a, b, c) ;
X =
[a],
Y =
[b, c];
X = [a, b],
Y = [c] ;
X = [a, b, c),
Y = [] ; false.
Prefiks listy:
? konkat (X,_, [a,b,c]). X = [];
X =
[a] ;
X = [a, b];
X = [a, b, c) ;
false.
Podaj listę 3 ostatnich elementów listy
? konkat (_,Y, [3,5,7,s,4,c,b]), length (Y, 3).
Y = [4, c, b];
false.
Przestawic 3 elementy z końca na początek
? konkat (X, Y, [3,5,7,s,4,c,b]), length (Y, 3), konkat (Y, X, Z). X = [3, 5, 7, s],
Y = [4,
CI bl,
Z = [4, c, b, 3, 5, 7, s];
false.
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/
/*
[trace] 10 ?- konkat ([1,2], [b], x).
Call: (6) konkat ([1, 2], [b], _G1899) ? creep Call: (7) konkat ([2], [b], _G1975) ? creep Call: (8) konkat ([1, Exit: (8) konkat ([1,
[b],
G1978) ? creep [b], [b]) ? creep
Exit: (7) konkat ([2], [b], [2, b]) ? creep 2], [b], [1, 2, b]) ? creep
Exit: (6) konkat ([1,
X = [1, 2, b].
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/
