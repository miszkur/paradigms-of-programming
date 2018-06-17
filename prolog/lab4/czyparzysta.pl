niep([_]).
parz([_|R]) :- niep(R).
niep([_|R]) :- parz(R).

