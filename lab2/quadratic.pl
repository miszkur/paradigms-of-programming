:- dynamic(delta/4). 

delta(A,B,C,WYNIK) :- WYNIK is B*B - 4*A*C.

:- dynamic(kwadrat/4). 

kwadrat(A,B,C,WYNIK) :- delta(A,B,C,X),
			WYNIK is (-B - sqrt(X))/2,
			WYNIK is (-B + sqrt(X))/2.
