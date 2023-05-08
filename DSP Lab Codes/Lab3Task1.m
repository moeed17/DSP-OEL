%Lab3Task1
clear all;close all;clc;

h = [3 2 1 -2 1 0 -4 0 3]; 
org_h = 1;                 
nh = [1:length(h)]-org_h;  

x = [0,0,1,0,0];     
org_x = 3;                
nx = [1:length(x)]-org_x; 

y1 = conv(h,x);
ny1 = [nh(1)+nx(1): nh(end)+nx(end)]; %index vector for convolved y(n)

figure,
subplot(3,1,1),
stem(nh,h,'filled','m');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny1(1)-1 ny1(end)+1]);
title('Impulse Response h(n) of system');
grid;

subplot(3,1,2),
stem(nx,x,'filled','m');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny1(1)-1 ny1(end)+1]);
title('Input signal x(n)');
grid;

subplot(3,1,3),
stem(ny1,y1,'g','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny1(1)-1 ny1(end)+1]);
title('Output obtained by convolution y(n)');
grid;