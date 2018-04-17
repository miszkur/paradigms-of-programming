
removefirst([X|R],R,X).

removefirst([Y|R1],[Y|R2],X) :-
	dif(Y,X),
	removefirst(R1,R2,X),!.
