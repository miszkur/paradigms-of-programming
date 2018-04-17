książka(16, 'Flatlandia', autor('Edvin Abbot', 1838-1926),wydanie('Sell & Co',1884)).
książka(28, 'R. U. R.', autor('Karel Capek', 1890-1938),wydanie('Palyers Press',2002)).
książka(34, 'Kobieta z wydm', autor('Kobo Abe', 1924-1993),wydanie('Wydawnictwo Znak',2007)).
książka(36, 'Zamek', autor('Frans Kafka', 1883-'teraz'),wydanie('Zielona Sowa',2001)).
książka(37, 'Gargantua i Pantagruel
'
, autor('
François Rabelais', 1494- 
'teraz'),wydanie('Siedmioróg',2004)).

zyje(X) :- książka(_,_,autor(X,_-'teraz'),_).
