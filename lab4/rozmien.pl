moneta(1).
moneta(2).
moneta(5).

rozmien(0,[]).

rozmien(Kwota,[X|R]) :-
  moneta(X),
  Reszta is Kwota - X,
  Reszta >= 0,
  rozmien(Reszta,R).
