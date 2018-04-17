% sprawdzenie, czy element Lewo znajduje się na lewo od elementu Prawo w liście.
na_lewo(Lewy,Prawy,[Lewy,Prawy|_]).
na_lewo(Lewy,Prawy,[_|Ogon]) :- na_lewo(Lewy,Prawy,Ogon).

% Sprawdzenie, czy elementy X i Y znajdują się obok siebie w liście Domy.
obok(X,Y,Domy) :- na_lewo(X,Y,Domy).
obok(X,Y,Domy) :- na_lewo(Y,X,Domy).	

% Rozwiązanie zagadki.
rozwiazanie(Szukany) :-
	% 5 ludzi różnych narodowości zamieszkuje 5 domów w 5 różnych kolorach.
	% Wszyscy palą papierosy 5 różnych marek i piją 5 różnych napojów.
	% Hodują zwierzęta 5 różnych gatunków.
	% Lista reprezentująca pojedynczy dom:
	% [numer,kolor,mieszkaniec,papierosy,napoj,zwierzeta].
	Domy = [[1,_,_,_,_,_],[2,_,_,_,_,_],[3,_,_,_,_,_],[4,_,_,_,_,_],[5,_,_,_,_,_]],
	% Norweg zamieszkuje pierwszy dom.
	member([1,_,norweg,_,_,_],Domy),
	% Anglik mieszka w czerwonym domu.
	member([_,czerwony,anglik,_,_,_],Domy),
	% Zielony dom znajduje się bezpośrednio po lewej stronie domu białego.
	na_lewo([_,zielony,_,_,_,_],[_,bialy,_,_,_,_],Domy),
	% Duńczyk pije herbatkę.
	member([_,_,dunczyk,_,herbata,_],Domy),
	% Palacz Rothmansów mieszka obok hodowcy kotów.
	obok([_,_,_,rothmans,_,_],[_,_,_,_,_,koty],Domy),
	% Mieszkaniec żółtego domu pali Dunhille.
	member([_,zolty,_,dunhill,_,_],Domy),
	% Niemiec pali Marlboro.
	member([_,_,niemiec,marlboro,_,_],Domy),
	% Mieszkaniec środkowego domu pija mleko.
	member([3,_,_,_,mleko,_],Domy),
	% Palacz Rothmansów ma sąsiada, który pija wodę.
	obok([_,_,_,rothmans,_,_],[_,_,_,_,woda,_],Domy),
	% Palacz Pall Malli hoduje ptaki.
	member([_,_,_,pall_mall,_,ptaki],Domy),
	% Szwed hoduje psy.
	member([_,_,szwed,_,_,psy],Domy),
	% Norweg mieszka obok niebieskiego domu.
	obok([_,_,norweg,_,_,_],[_,niebieski,_,_,_,_],Domy),
	% Hodowca koni mieszka obok żółtego domu.
	obok([_,_,_,_,_,konie],[_,zolty,_,_,_,_],Domy),
	% Palacz Philip Morris pija piwo.
	member([_,_,_,phillip_morris,piwo,_],Domy),
	% W zielonym domu pija się kawę.
	member([_,zielony,_,_,kawa,_],Domy),
	% jakie paierosy kto pali
	member([_,_,Osoba,Papierosy,_,_],Domy),
	Szukany = [Osoba,Papierosy].
