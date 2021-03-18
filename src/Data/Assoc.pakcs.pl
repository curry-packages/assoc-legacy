%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Prolog implementation of builtins of module Data.Assoc:
%

:- dynamic globalAssoc/2.

'Data.Assoc.prim_setAssoc'(Key,Val,'Prelude.()') :-
        string2Atom(Key,KeyA),
	(retract(globalAssoc(KeyA,_)) -> true ; true),
	assertz(globalAssoc(KeyA,Val)),
	!.

'Data.Assoc.prim_getAssoc'(Key,R) :-
        string2Atom(Key,KeyA),
	(globalAssoc(KeyA,Val) -> R='Prelude.Just'(Val) ; R='Prelude.Nothing'),
	!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
