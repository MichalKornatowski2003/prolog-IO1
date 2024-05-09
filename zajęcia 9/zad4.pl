language(prolog).
% liczba_eleml (+L,?N) - wersja naiwna
% Spełniony, gdy N jest liczbą elementów listy L
% -----------------------------------------------
% warunek konieczny rekurencję: lista pusta ma
% zero elementów
 
liczba_elem1([],0).
 
% Rekurencja: liczba elementów listy L jest równa
% długości ogona tej listy plus 1
 
liczba_eleml([_[T],N]):-
    liczba_elem1(T,N1),
    N is N1+1.
/*
[trace] ?- liczba_elem1 ([1, 2], N).
 
Call: (6) liczba_elem1 ([1, 2], G543) ? creep
Call: (7) liczba_elem1 ([2], G619)? creep
Call: (8) liczba_elem1 ((), G619)? creep
Exit: (8) liczba_elem1 ([), 0) ? creep
Exit: (8) G624 is 0+1? creep
Exit: (8) 1 is 0+1? creep
Exit: (7) liczba elem1 ([2], 1)? creep         
Call: (7) G543 is 1+1 ? creep
Exit: (7) 2 is 1+1? creep
Exit: (6) liczba_elem1 ([1, 2], 2) ? creep
 
N = 2.
*/
