language(prolog).
% Rekurencja
% Silnia: 0!=1,n1=n*(n-1)!

% Silnia(N,S)
% S=N!

% Warunek zakończenia rekurencji
% silnia(0,1).

% Rekurencja:
silnia(0,1).
silnia(N,S):- 
	N>0,
	N1 is N-1,
	silnia(N1,S1),
	S is N*S1.
