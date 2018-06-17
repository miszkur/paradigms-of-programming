rodzic(kasia,robert).
rodzic(magda,jan).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert,magda).

rodzic(tomek,robert).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).

famme(kasia).
  homme(krzys).
  parent(kasia,krzyś).

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
 
ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).

brat(B,X) :-
	mezczyzna(B),
	rodzic(Y,X),
	rodzic(Y,B),
	B\=X.

siostra(S,X) :-
	kobieta(S),
	rodzic(Y,S),
	rodzic(Y,X),
	S\=X.

dziadek(D,X) :-
	mezczyzna(D),
	rodzic(Y,X),
	rodzic(D,Y).

babcia(B,X) :-
	kobieta(B),
	rodzic(Y,X),
	rodzic(B,Y).

przodek(Prz,Ja) :-
	rodzic(Prz,Ja).
 
przodek(Prz0,Ja) :-
	rodzic(Prz0,Prz),
	przodek(Prz,Ja).

potomek(P,Ja) :-
	rodzic(Ja,P).

potomek(Pot0, Ja) :-
	rodzic(Pot,Pot0),
	potomek(Pot,Ja).



