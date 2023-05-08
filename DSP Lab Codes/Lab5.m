close all,clear all;clc;
x=[1 ,2 ,3 ,0];
N=4;
n=[0:1:N-1];
k=[0:1:N-1];

WN=exp(-j*2*pi/N);

nk=n'*k;

WNnk=WN.^nk;

Xk=x*WNnk
mag_Xk=abs(Xk);
phase_Xk=angle(Xk);
phase_degrees=rad2deg(phase_Xk);

figure;
subplot(2,1,1)
stem(n,mag_Xk,'filled','g','LineWidth',1.5)
xlabel('Index(K)'),ylabel('|X(k)|'),title('Magnitude Plot'),grid;
subplot(2,1,2)
stem(n,phase_degrees,'filled','k','LineWidth',1.5)
xlabel('Index(K)'),ylabel('∠X(k)'),title('Phase Plot'),grid;

B=conj(WNnk);
Xk_inv=Xk.';
Xn=(1/N)*(Xk)*B
figure;
stem(n,Xn,'filled','g','LineWidth',1.5)
xlabel('Index(n)'),ylabel('x(n)'),title('Signal in time domain x(n)'),grid;