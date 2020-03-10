%=====================================
%CEFET-PB, JOAO PESSOA, 10/03/2020
%COORD TELECOMUNICACOES - GTEMA
%METODO DA SUBSTITUICAO RETROATIVA
%autor: PROF. PAULO HENRIQUE DA F.SILVA
%=====================================

clear all,close all,clc
help gauss

A=[[3 4 -5 1 -10];[0 1 1 -2 -1];[0 0 4 -5 3]; [0 0 0 2 2]]; N=4;
%EXEMPLO 2.4
A=[[3 4 -5 1 -10];[0 0 1 -2 0];[0 0 4  -5 3];[ 0 0 0 2 2]]; N=4; %EXEMPLO
%2.5
A=[[3 4 -5 1 -10];[ 0 0 1 -2 -1];[ 0 0 4 -5 3]; [0 0 0 2 2]]; N=4;
%EXEMPLO 2.6
A=[[1 3 -2 7 0  -9 6 -1 6.25];[0 4 3 -1 8 6 -7 4 55.08];
      [0 0 7 4 2 -4 -8 2 -2.454];[0 0 0 -3 5 9 5 1 51.442];
      [0 0 0 0 2  -6 -4 8 0];[0 0 0 0 0 -5 0 3 -0.008];
      [0 0 0 0 0 0 -9 5 7.228];[0 0 0 0 0 0 0 6 24]];N=8;   %EXEMPLO 2.7
disp('MATRIZ AUMENTADA DO SISTEMA:')
disp(num2str(A));

N1=N+1;K=N-1;
X(N)=A(N,N1)/A(N,N);
for I=1:K
    L=N-I;
    X(L)=A(L,N1);
    M=L+1;
    for J=M:N
        X(L)=X(L)-A(L,J)*X(J);
    end
    X(L)=X(L)/A(L,L)
end
disp('  ');disp('VETOR SOLUCAO:');disp(num2str(X));disp('  ');