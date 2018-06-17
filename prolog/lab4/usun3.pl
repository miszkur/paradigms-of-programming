
usun3o(Stara,Nowa) :- sklej(Nowa,[_,_,_],Stara).

usun3p(Stara,Nowa) :- sklej([_,_,_],Nowa,Stara).

usun3(Stara,Nowa) :- usun3p(Stara,Nowa2), usun3o(Nowa2,Nowa).
