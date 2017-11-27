# LiCS Assignment
### Authors:
Rahul Bothra 2016A7PS0015P<br>
Sankalp Sangle 2016A7PS0110P

### Problem Statement (Set 2):
1. To check whether a given binary relation is transitive over a given set.
2. To compute the transitive closure of a binary relation over a given set.<br>
**Note** - The entire question is given in Question.pdf

### Predicates' Description:
**Note:**
 1. A, B are Lists.
 2. C is a element.
 3. S is a list of elements in the Set. (Input format: List of elements)
 4. R is the binary relation on the set S. (Input Format: List of 2-element lists)
 5. X is used to compute and return a value.

**member(C,A):** Builtin to check whether C is a member of A.<br>
**appendList(A,B,X):** Appends A to B and returns them as X.<br>
**validRelation(S,R):** Checks whether all elements in R belong to S.<br>
**transitiveCheck(R):** Checks whether R is transitive.<br>
**transitive(S,R):** Checks whether R is valid over S and is transitive.<br>
**closureCheck(R,X):** Computes the transitive closure of the R and returns it as X.<br>
**closure(S,R):** Checks whether R is valid over S and prints transitive closure of R.<br>


### Usage:
1. Load the file answer.pl
```bash
swipl answer.pl
```
2. To check if a Relation R is transitive over a set S, type
```prolog
transitive(S, R).
```
3. To compute transitive closure of a Relation R, type
```prolog
closure(S,R).
```
4. To check whether a Relation R' is the transitive closure of Relation R, type
```prolog
closureCheck(R,R').
```