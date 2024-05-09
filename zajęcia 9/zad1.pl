language(prolog).
% PRZETWARZANIE LIST
 
% wypisz_lista (+L)
% spełniony, gdy każdy element listy L zostanie
% wypisany w nowym wierszu
% ------------------------------------------------
 
% warunek kończący rekurencję: listę pustą uznajemy
% za wypisaną 
 
wypisz_lista([]). 
 
% rekurencja: wypisujemy głowę listy i powtarzamy
% procedurę wypisywania dla ogona listy;
% predykat write/1 wypisuje term H% predykat nl/0 wyprowadza nową linię wypisz_lista([HIT]):- 
    write(H),
     nl,     
wypisz_lista(T).
