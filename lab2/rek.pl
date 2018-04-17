factorial(0,1).

factorial(Number,Result) :-
        Number > 0,
        NewNumber is  Number-1,
        factorial(NewNumber,NewResult),
        Result  is  Number*NewResult.
