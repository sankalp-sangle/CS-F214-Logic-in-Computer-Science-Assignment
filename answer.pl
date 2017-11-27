% Student(Rahul Bothra, 2016A7PS0015P).
% Student(Sankalp Sangle, 2016A7PS0110P).

appendList([],LIST,LIST).
appendList([H|T],LIST,[H|LIST2]):- appendList(T,LIST,LIST2).

validRelation(Set,[]).
validRelation(Set,[[A,B]|T]):- member(A,Set), member(B,Set), validRelation(Set,T).

transitiveCheck(Relation):- not((member([A,B],Relation), member([B,C],Relation), not(member([A,C],Relation)))).

transitive(Set,Relation):- not(validRelation(Set,Relation)), print("Some elements in Relation don't belong in Set"), !.
transitive(Set,Relation):- transitiveCheck(Relation).

closureCheck(Relation,X):- member([A,B],Relation),member([B,C],Relation), not(member([A,C],Relation)), appendList(Relation,[[A,C]],Y), closureCheck(Y,X).
closureCheck(Relation,X):- transitiveCheck(Relation), X = Relation.

closure(Set,Relation):- not(validRelation(Set,Relation)), print("Some elements in Relation don't belong in Set"), !.
closure(Set,Relation):- closureCheck(Relation,X), print(X).
