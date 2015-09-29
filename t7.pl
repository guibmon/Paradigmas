%Guilherme Bolzan Monteiro
%CC

%1
pred([],[]).
pred([H|T],[H1|T1]) :- H1 is H + 1, pred(T,T1).

% a funçao calcula a segunda lista em funcao da primeira, sempre adicionando uma unidade a cada elemento da primeira lista
% pred([1,2,3],[a,b,c]). resulta em 'false', pois as variaveis estao em letras minusculas.
% pred([8,9],L). resulta em L = [9,10].
% pred([1,2,3],[2,L]). resulta em false.
% pred([1,2],[2,X]). resulta em X = 3.

%2
ziplus([],[],[]).
ziplus([H1|T1],[H2|T2],[H3|T3]) :- H3 is H1 + H2, ziplus(T1,T2,T3).

%3
countdown(-1,[]).
countdown(N,[H|T]) :- H = N, N1 is N-1, countdown(N1,T).

%positivos([],[]).
%positivos([H|T],[H1|T1]) :- H > 0, H1 = H, positivos(T,T1).
%positivos([H|T],[T1]) :- H =< 0, positivos(T,T1).

%7
intercala(_,[],[]).
intercala(X,[H|T],[H1,H2|T1]) :- H1 = H, H2 = X, intercala(X,T,T1).
