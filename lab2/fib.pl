fib(0,1).
fib(1,1).
fib(Liczba,Wynik) :-
	Liczba > 1,
	NowaLiczba is  Liczba-1,
        fib(NowaLiczba,NowyWynik),
        Wynik is  Liczba+NowyWynik.
	 
