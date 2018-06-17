select_sort([],[]).

select_sort(L,[AW|RW]) :-
	listmin(L,AW),
	write(AW),
	removefirst(L,L2,AW),
	write(L2),nl,
	select_sort(L2,RW).
