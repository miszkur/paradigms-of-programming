

podziel([P|L],X,Y) :-
		sklej(R,[Element],L),
		sklej([Element],Y,YW),
		sklej(X,[P],XW),
		podziel(R,XW,YW).
		
podziel([],_,_).
