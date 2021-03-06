%Concatenar los elementos de la serie de fibonacci
%Para correr el ejercicio2 hay que correr
%  serieFib(N,L,R). en donde N es el n�mero que se quiere, L la lista
%  y R es el resultado
% example:   serie(8,L,R).
concatenar([],L,L).
concatenar([A|Ca],L2,[A|Cc]):- concatenar(Ca,L2,Cc).
fib(0,0).
fib(1,1).
fib(N,Y):-N>1,N1 is N-1,fib(N1,Y1),N2 is N-2,fib(N2,Y2),Y is Y1+Y2.
serie(0,[0]).
serie(1,[1]).
serie(Nt,L):- Nt>1,fib(Nt,P),N1 is Nt-1,serie(N1,Ls),concatenar(Ls,[P],L).

%sum(N,L,R):- L2 is   .
sum([], 0).

sum([X|Xs], S):-
          sum(Xs, S2),R1 is S2 mod 2, R2 is X mod 2, (R1 == 0 -> (R2 == 0 -> S is S2 + X; S is S2)).

serieFib(N,L,R):- serie(N,L), sum(L, R).
