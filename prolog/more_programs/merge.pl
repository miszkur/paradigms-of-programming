merge([],[],_).

merge(X,[],W) :-
	append(W,X,W).

merge([],X,W) :-
	append(W,X,W).

merge([E1|R1],[E2|R2],W) :- 
	E1>E2,
	append([E2],W,NW),
	merge([E1|R1],R2,NW).

merge([E1|R1],[E2|R2],W) :- 
	E1<E2,
	append([E1],W,NW),
	merge(R1,[E2|R2],NW).
	
