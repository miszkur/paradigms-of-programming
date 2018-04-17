ostatni([X], X).
ostatni([_|XS], Y) :- ostatni(XS, Y).
