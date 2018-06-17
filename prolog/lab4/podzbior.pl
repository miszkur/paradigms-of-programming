podzbior([],[]).

podzbior([X|R],[X|R2]) :-
		podzbior(R,R2).

podzbior([_|R],L) :-
	podzbior(R,L).
