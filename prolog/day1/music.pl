plays('flute', 'musician one').
plays('piano', 'musician one').
plays('guitar', 'musician two').
plays('guitar', 'musician three').
plays('xylophone', 'musician one').
plays('triangle', 'really talented dude').
plays('guitar', 'really talented dude').
plays('piano', 'really talented dude').
plays('drums', 'really talented dude').
plays('cow bell', 'really talented dude').

genre('rock', 'musician one').
genre('jazz', 'really talented dude').
genre('death metal', 'really talented dude').
genre('bubblegum pop', 'musician three').

played_in(A,B) :- plays(A,X), genre(B,X).

