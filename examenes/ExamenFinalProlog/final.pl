%El insert revisa la altura de cada uno de los nodos del árbol para
% saber en que nodo insertar

insert(Num, empty, tree(Num,empty,empty)) :- !.
insert(Num, tree(Element,Left,Right), tree(ElementN, Left, RightN)) :-  height(Left, LeftH),
	                                                                height(Right, RightH),
									RightH < LeftH,
	                                                                insert(Num, Right, RightN),
									moveNodes(Element, RightN, ElementN, RightN).


insert(Num, tree(Element,Left,Right), tree(ElementN, LeftN, Right)) :- height(Left, LeftH),
	                                                               height(Right, RightH),
								       RightH >= LeftH,
								       insert(Num, Left, Left2),
								       moveNodes(Element, Left2, ElementN, LeftN).

%Cambia el valor de los nodos dependiendo si es mayor o menor
moveNodes(Num, tree(Element, Left, Right), Num, tree(Element, Left, Right)):- Num > Element.
moveNodes(Num, tree(Element, Left, Right), ElementN, tree(NewValue, Left, Right)):- (Num < Element -> NewValue is Num,
	                                                              ElementN is Element).


/*

insert(Num, tree(Element,Left,Right), tree(Element, Left, Right3)) :- Num >= Element,
	                                                              rotate(Right2,Right3),
                                                                      insert(Num, Right, Right2).
*/


%inserta una lista al arbol especificado: arbol([1,5,2,10,9], empty, X).
arbol([H], I, R)   :- insert(H,I,R).
arbol([H|T], I, R) :- insert(H, I, S),
                      arbol(T, S, R).


%calcula la altura del arbol.
height(tree(_,empty,empty), 1) :- !.
height(empty, 0) :- !.
height(tree(_, Left, Right), Num) :- height(Left, LeftN),
                                        height(Right, RightN),
                                        max_list([LeftN, RightN], Temp),
                                        Num is Temp+1.


%tree(3,tree(2,tree(1,empty,empty),empty),empty)
%tree(9,tree(7,tree(6,empty,empty),tree(8,empty,empty)),tree(10,empty,empty))
%tree(3,tree(2,tree(1, empty,empty), empty), tree(5, tree(4,empty,empty), tree(7,empty,empty)))
%tree(6,tree(3,tree(2,empty,empty), tree(5,tree(4,empty,empty), empty)), tree(8,tree(7,empty,empty), tree(9,empty,empty)))
%tree(16, tree(10, empty, empty), tree(11, empty, empty))








































