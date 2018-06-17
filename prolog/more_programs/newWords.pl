new_word:- write('Give me a word i dunno'),nl,
	read(Word),
	check_if_known(Word).

check_if_known(Word) :- 
	definition(Word,_),
	write('I know this word!').

check_if_known(Word) :- 
	not(definition(Word,_)),
	write('And what doues it mean?'),nl,
	read(Def),
	assertz(definition(Word,Def)).

:- dynamic(definition/2).

definition(polymer,framework).




