clear all;close all;clc;
F=100;
Fs=10000;
Ts=1/Fs;
N=500;
n=[0:N-1];

t=[0:Ts:N*Ts];
x=sin(2*pi*F*t);

q=input('Enter No. of bits (1-8): ');

fd=F/Fs;
xn=sin(2*pi*fd*n);

qs=input('Select the method of quantization, Press 1 for Round-off, 2 for Floor and 3 for Ceil: ');
max=2^(q-1)-1;
xn=max*xn;

if qs==1
xq = round(xn); 
elseif qs==2
xq = floor(xn); 
elseif qs==3 
xq = ceil(xn);
end

figure;
stem(n,xn,'m');xlim([0 100]),grid on;hold on;
%figure;
stem(n,xq,'g');xlim([0 100]);hold on;
%figure;
plot(n,xq,'k','linewidth',1.5);xlim([0 100]);
legend('DTCV','DTDV','LEVELS');
