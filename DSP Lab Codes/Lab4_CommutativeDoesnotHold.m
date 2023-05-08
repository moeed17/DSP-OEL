%rxy!=ryx
clear all;close all;clc;

n = [0:49];
phi_1 = 0;
phi_2 = 0;

x = sin(2*pi*0.1*n + phi_1);
origin_x = 1;
nx = [1:length(x)]-origin_x;

y = cos(2*pi*0.1*n + phi_2);
origin_y = 1;
ny = [1:length(y)]-origin_y;

[rxy , c1]=xcorr(x,y);
[ryx , c2]=xcorr(y,x);

figure,
subplot(2,1,1)
stem(c1,rxy,'filled','g')
xlabel('Lag index');
ylabel('Correlated rxy Output')
title('Correlation')
grid on;
subplot(2,1,2)
stem(c2,ryx,'filled','g')
xlabel('Lag index');, 
ylabel('Correlated ryx Output')
title('Correlation')
sgtitle('Commutative doesnt hold')
grid on;