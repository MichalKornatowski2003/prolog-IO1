language(prolog).
% odwrotna(+L1, L2)
% spełniony, gdy lista L2 jest odwróceniem listy L1

odwrotna(L1, L2):-odwrotna_ak(L1, [], L2).
% odwrotna_ak (+L1, A, L2) wersja z akumulatorem
% spełniony, gdy L2 jest połączeniem listy odwrotnej
% do Ll i listy A (akumulatora)
% warunek kończący rekurencję: jeżeli Ll jest listą pustą, wtedy L2=A
odwrotna_ak([],A,A).
% rekurencja:
odwrotna_ak( [HT], A, L2):-
odwrotna ak(T, [HIA], L2).

/*
?- odwrotna([1, 2, 3], L).
L = [3, 2, 1].
?- odwrotna_ak([1, 2, 3], [], L).
L = [3, 2, 1].
print("Michał Kornatowski").
"Michał Kornatowski
true.
*/
