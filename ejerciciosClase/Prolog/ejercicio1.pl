/*Primer ejercicio de predicados
 * para realizar consultas sencillas
 * male(issac) regresa true
 * father(terach, X)  regresa todos los hijos de terach
 * para ver los siguientes resultados es con barra espaciadora*/

father(tareh, sarah).
father(abraham, isaac).
father(terach, nachor).
father(terach, haran).
father(terach, abraham).
father(haran, lot).
father(haran, mismcah).
father(haran, yiscah).
/*mother (sarah, _) , female (sarah)   -  la coma es como un &&*/
mother(sarah, isaac).
male(terach).
male(lot).
male(horan).
male(abraham).
male(nachor).
male(isaac).
female(sarah).
female(milcah).
female(yiscah).
/*father(X,Y), male(Y)  - me regresa todos los hijos que son masculinos*/
/*:-  significa Sí y solo sí*/
son(X,Y):- father(Y,X), male(X).
son(X,Y):- mother(Y,X), male(X).

grandFather(X,Y):- father(X,Z),
         mother(Z,Y).

grandParent(X,Y):- parent(X,Z),
	parent(Z,Y).
parent(X,Y):- father(X,Y).
parent(X,Y):- mother(X,Y).

brother(X,Y):- parent(Z,X), parent(Z,Y), male(Y), X\=Y.

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z), ancestor(Z,Y).


