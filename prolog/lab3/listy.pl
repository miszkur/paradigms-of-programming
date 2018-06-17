sklej([],B,B).

sklej([A|RA],B,[A|RC]) :-
	sklej(RA,B,RC).

usun(X,[X|L],L).

usun(X,[Y|L],[Y|Reszta]) :-
	usun(X,L,Reszta).

dodaj(X,L,[X|L]).
	

wstaw(X,L,Wynik) :-
	usun(X,Wynik,L).

nalezy(X,L) :-
	usun(X,L,_).


permutacja([],[]).
permutacja(L,[X|P]) :-
	usun(X,L,L2),
	permutacja(L2,P).

zawiera(S,L) :-
	sklej(_,LK,L),
	sklej(S,_,LK).


odwroc([],[]).

odwroc([H|R],L) :-
	odwroc(R,L),
	sklej(R,[H],L).
