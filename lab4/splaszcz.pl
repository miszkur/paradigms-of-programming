add(Element_1,Lista, [Element_1|Lista]).

splaszcz([],_).

splaszcz([P|R],X) :- P=[_] -> splaszcz(P,X);
			add(P,X,X2), splaszcz(R,X2).
