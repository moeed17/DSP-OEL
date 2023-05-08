% rxy(n)=x(n)*y(-n)
clc;clear all;close all;

n = [0:49];
ph1 = 0;
ph2 = 0;

x = sin(2*pi*0.1*n + ph1);
origin_x = 1;
nx = [1:length(x)]-origin_x;

y = sin(2*pi*0.1*n + ph2);
origin_y = 1;
ny = [1:length(y)]-origin_y;

z=fliplr(y); %180 ghuma dega array ko hence x(n)==x(-n) bn jayega
rxy_1=conv(x,z);
[rxy_2 l]=xcorr(x,y);

subplot(2,1,1)
stem(l,rxy_1,'filled','k')
xlabel('Lag index');
ylabel('Correlated Output')
title('Using Convolution')
grid on;
subplot(2,1,2)
stem(l,rxy_2,'filled','m')
xlabel('Lag index'); 
ylabel('Correlated Output')
title('Using Correlation')
sgtitle('Correlation using Convolution')
grid on;