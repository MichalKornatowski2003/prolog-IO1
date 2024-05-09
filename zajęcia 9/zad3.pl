language(prolog).
% podwojenie (+L1,?L2).
% Spełniony, gdy elementy listy L2 są podwojeniem 
% elementów listy L1, np. L1=[a,b], L2=[a,a,b,b]
% -----------------------------------------------------
% warunek konieczny rekurencję: podwojenie listy pustej
% jest listą pustą
 
podwojenie([], []).
 
% Rekurencja:

podwojenie([H1|T1], [H1,H1|T2]):-
    podwojenie(T1, T2).
