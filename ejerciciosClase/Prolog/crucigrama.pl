
/*Los predicados deben de tener el mismo n�mero de argumentos para tomarlos igual
*/
word(camion, c,a,m,i,o,n).
word(media, m,e,d,i,a,_).
word(mango, m,a,n,g,o,_).
word(cama, c,a,m,a,_,_).
word(mora, m,o,r,a,_,_).
word(mesa, m,e,s,a,_,_).

/*Para correr y regresa 6  crossWord(X,Y,Z,M,N,O).*/

crossWord(H1, H2, H3, V1, V2, V3, V4):-
	word(H1,_,H12,_,H14,_,H16),
	word(H2,_,H22,_,H24,_,_),
	word(V1,_,H12,_,_,_,_),
	word(V2,_,_,_,H14,_,_),
	word(V3,_,_,H16,_,H22,_),
	word(V4,_,_,_,H24,_,_).



