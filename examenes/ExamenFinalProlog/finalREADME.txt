Examen Final Lenguajes...

Realizar un programa que permita insertar en un arbol de izq a derecha, nodos los cuales deben ser siempre menores a sus padres,
en otro caso, deben de cambiar de posición hasta llegar a la Raiz.


Ejemplo de ejecución de árbol explicado en el salón:


   	  16
        /  \
       /    \
      /      \
     10       11
    /  \      / \
   5    7    4   6
 

*Para generar el árbol se debe ejecutar:
- Funciona Bien
  arbol([10,16,11,5], empty, R).
R = tree(16, tree(10, tree(5, empty, empty), empty), tree(11, empty, empty)

- Error por la altura de los nodos al insertar el siguiente valor.
  arbol([10,16,11,5,7], empty, R).
R = tree(16, tree(10, tree(5, empty, empty), empty), tree(11, tree(7, empty, empty), empty))

 
COMENTARIO.
Hay un detalle a la hora de insertar porque solo sabe en que nodo insertar dependiendo la altura, pero no de que lado.
