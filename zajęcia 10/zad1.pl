language(prolog).
% liczba_elem2 (+L,?N)
% spełniony, gdy N jest liczbą elementów listy L

liczba_elem2(L,N):-liczba_elem_ak(L,O,N).

% liczba_elem_ak(+L,+A, ?N) wersja z akumulatorem
% spełniony, gdy N jest liczbą elementów listy L

% plus zawartość akumulatora A

% warunek kończący rekurencję: dla listy pustej
%N = A

liczba_elem_ak([],A,A).

% rekurencja: N jest równe liczbie elemntów ogona
%
% listy L + zawrtość A powiększona o 1

liczba_elem_ak([_|T],A,N):-
  A1 is A+1,
  liczba_elem_ak(T,A1,N).
/*
[trace] 7 ?- liczba_elem2 ([1,2], N).
Call: (6) liczba_elem2 ([1, 2], _G704) ? creep
Call: (7) liczba_elem_ak ([1, 2], 0, G704) ? creep Call: (8) G785 is 0+1 ? creep
Exit: (8) 1 is 0+1 ? creep
Call: (8) liczba elem_ak ([2], 1, G704) ? creep G788 is 1+1 ? creep
Call: (9) Exit: (9) 2 is 1+1 ? creep
Call: (9) liczba_elem_ak ([], 2,
Exit: (9) liczba_elem_ak ([1, 2,
G704) ? creep
2) ? creep Exit: (8) liczba_elem_ak ([2], 1, 2) ? creep Exit: (7) liczba_elem_ak ([1, 2], 0, 2) ? creep Exit: (6) liczba elem2 ([1, 2], 2) ? creep
N = 2.
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/
