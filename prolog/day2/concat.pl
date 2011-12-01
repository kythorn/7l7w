concat([], List, List).
concat([Head|Tail1], List, [Head|Tail2]) :-
	concatenate(Tail1, List, Tail2).