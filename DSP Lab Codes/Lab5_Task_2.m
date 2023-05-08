close all,clear all;clc;
Xk=[0,-4i ,1.414+1.414i, 0 , 0, 0, 1.414-1.414i ,4i];
N=8;
n=[0:1:N-1];
k=[0:1:N-1];

WN=exp(-j*2*pi/N);

nk=n'*k;

WNnk=WN.^nk;

B=inv(WNnk);
Xk_inv=Xk.';
Xn=(1/N)*(Xk)*B
figure;
stem(n,Xn,'filled','g','LineWidth',1.5)
xlabel('Index(n)'),ylabel('x(n)'),title('Signal in time domain x(n)'),grid;