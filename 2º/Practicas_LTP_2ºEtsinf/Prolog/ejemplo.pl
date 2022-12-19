
arco(0,3). arco(3,4). arco(4,6). arco(0,1). arco(1,2). 
arco(4,5). arco(7,6). arco(7,8). arco(6,8).

conectado(X,Y) :- arco(X,Y).
conectado(X,Y) :- arco(X,Z), conectado(Z,Y).