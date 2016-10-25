
%Se crea primero la lista de las traducciones
%Para mandarse llamar se pone
%traduce([this,is,an,example,de,como,funciona,my],E,I).
ingles(this, este).
ingles(is, es).
ingles(an, un).
ingles(example, ejemplo).
ingles(my, mi).
ingles(program, programa).
espaniol(de,of).
espaniol(como,how).
espaniol(funciona,works).

traduce([],E,I).
traduce([H|T],E,I) :- (ingles(H,X),traduce(T,E,[X|I]),!;espaniol(H,Y),traduce(T,[Y|E],I),!),imprime(E,I).
imprime(E,I):- write([traduccion,ingles,I]),nl,write([traduccion,espaniol,E]),nl.
