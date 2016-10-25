palabra(astante,a,s,t,a,n,t,e).
palabra(astoria,a,s,t,o,r,i,a).
palabra(baratto,b,a,r,a,t,t,o).
palabra(cobalto,c,o,b,a,l,t,o).
palabra(pistola,p,i,s,t,o,l,a).
palabra(statale,s,t,a,t,a,l,e).

/*Se debe poner al inicio sobre que palabra se está trabajando*/
crucigrama(H1,H2,H3,V1,V2,V3):-
	    palabra(H1,_,V12,_,V22,_,V32,_),
            palabra(H2,_,V14,_,V24,_,V34,_),
            palabra(H3,_,V16,_,V26,_,V36,_),
	    palabra(V1,_,H12,_,H22,_,H32,_),
	    palabra(V2,_,H14,_,H24,_,H34,_),
            palabra(V3,_,H16,_,H26,_,H36,_),

             H1\=H2,
             H1\=V1, H1\=V2, H1\=V3, H1\=H3,
             H2\=V1, H2\=V2, H2\=V3, H2\=H3,
             V1\=V2, V1\=V3, V1\=H3,
             V2\=V3, V2\=H3,
             V3\=H3.


%función para ver si un elemento se encuentra en una lista
inList(X,[X|_], Cont).
inList(X, [H|T], Cont):- inList(X,T, Cont+1).

%Imprimir la posición en la lista en la que se encuentra la coincidencia




%función que encuentra el núm mayor
inMayor(X,[]).
inMayor().
