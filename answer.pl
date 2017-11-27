% Student(Rahul Bothra, 2016A7PS0015P).
% Student(Sankalp Sangle, 2016A7PS0110P).

appendList([],LIST,LIST).
appendList([H|T],LIST,[H|LIST2]):- appendList(T,LIST,LIST2).

validRelation(S,[]).
validRelation(S,[[A,B]|T]):-member(A,S),member(B,S),validRelation(S,T).

transitiveCheck(R):- not((member([A,B],R),member([B,C],R), not(member([A,C],R)))).

transitive(S,R):- not(validRelation(S,R)), print("Some elements in R don't belong in S"), !.
transitive(S,R):- transitiveCheck(R).

closureCheck(R,X):- member([A,B],R),member([B,C],R), not(member([A,C],R)), appendList(R,[[A,C]],Y), closureCheck(Y,X).
closureCheck(R,X):- transitiveCheck(R), X = R.

closure(S,R):- not(validRelation(S,R)), print("Some elements in R don't belong in S"), !.
closure(S,R):- closureCheck(R,X), print(X).