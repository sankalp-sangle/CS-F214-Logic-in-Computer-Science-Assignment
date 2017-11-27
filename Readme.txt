# LiCS Assignment
### Authors:
Rahul Bothra 2016A7PS0015P
Sankalp Sangle 2016A7PS0110P

### Problem Statement (Set 2):
1. To check whether a given binary relation is transitive over a given set.
2. To compute the transitive closure of a binary relation over a given set.
Note - The entire question is given in Question.pdf

### Predicates' Description:
Note:
 1. A, B are Lists.
 2. C is a element.
 3. Set is a list of elements in the S as described in the question. (Input format: List of elements)
 4. Relation is the binary relation R as described in the question. (Input Format: List of 2-element lists)
 5. X is used to compute and return a value.

member(C,A): Builtin to check whether C is a member of A.
appendList(A,B,X): Appends A to B and returns them as X.
validRelation(Set,Relation): Checks whether all elements in Relation belong to Set.
transitiveCheck(Relation): Checks whether Relation is transitive.
transitive(Set,Relation): Checks whether Relation is valid over Set and is transitive.
closureCheck(Relation,X): Computes the transitive closure of the Relation and returns it as X.
closure(Set,Relation): Checks whether Relation is valid over Set and prints transitive closure of Relation.

### Usage:
1. Load the file answer.pl
        swipl answer.pl
2. To check if a Relation is transitive over a set, type
        transitive(Set, Relation).
3. To compute transitive closure of a Relation, type
        closure(Set,Relation).
4. To check whether Relation2 is the transitive closure of Relation1, type
        closureCheck(Relation1,Relation2).
