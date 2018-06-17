
min(A,B,C) :- 
	A=<B,!,
	A=C.

min(A,B,C) :-
	A>B,
	B=C.

listmin([A|R],X) :-
	listmin(R,A,X).

listmin([],Min,Min).

listmin([A|R],M1,Min):-
	min(M1,A,M2),
	listmin(R,M2,Min).
