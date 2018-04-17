      znaczy(0,zero).   znaczy(1,jeden).
      znaczy(2,dwa).    znaczy(3,trzy).
      znaczy(4,cztery). znaczy(5,piec).
      znaczy(6,szesc).  znaczy(7,siedem).
      znaczy(8,osiem).  znaczy(9,dziewiec).

przeloz([],[]).

przeloz([P|L],[X|L2]) :-
		znaczy(P,X),
		przeloz(L,L2). 
