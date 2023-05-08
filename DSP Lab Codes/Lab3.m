clear all;close all;clc;

h = [3 2 1 -2 1 0 -4 0 3]; %impulse response
org_h = 0;                 %sample location at which the origin of h(n) exists
nh = [1:length(h)]-org_h;  %index vector for h(n)

x = [1 -2 3 -4 3 2 1];     %input sequence
org_x = 1;                 %sample location at which the origin of x(n) exists
nx = [1:length(x)]-org_x;  %index vector for x(n)

y = conv(h,x);
ny = [nh(1)+nx(1): nh(end)+nx(end)]; %index vector for convolved y(n)

figure,
subplot(3,1,1),
stem(nh,h,'filled','k');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nh(1)-1 nh(end)+1]);
title('Impulse Response h(n) of system');
grid;

subplot(3,1,2),
stem(nx,x,'filled','k');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nx(1)-1 nx(end)+1]);
title('Input signal x(n)');
grid;

subplot(3,1,3),
stem(ny,y,'g','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny(1)-1 ny(end)+1]);
title('Output obtained by convolution y(n)');
grid;
