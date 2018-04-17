:- dynamic(name/1).

name(aga).

run :-
	write('Give me a name to add:'),nl,
	read(Name),
	not(name(Name)),
	asserta(name(Name)),
	findall(X,name(X),L),
	write(L).
