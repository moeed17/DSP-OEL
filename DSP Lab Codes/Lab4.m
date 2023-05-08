clear all;close all;clc;

n = [0:49];
phi_1 = pi/6;
phi_2 = pi/6;

x = sin(2*pi*0.1*n + phi_1);
origin_x = 1;
nx = [1:length(x)]-origin_x;

y = sin(2*pi*0.1*n + phi_2);
origin_y = 1;
ny = [1:length(y)]-origin_y;

[rxy , l]=xcorr(x,y); %xcorr = cross correlation
[maxR , indR] = max(rxy);
disp(['The correlation at lag zero is: ' num2str(rxy(l==0)) '.']);
disp(['The maximum correlation is at lag ' num2str(l(indR)) '.']);

energy_x=sum(abs(x).^2);
energy_y=sum(abs(y).^2);
disp(['The energy of signal x at lag equals to 0 is ' num2str(energy_x)]);
disp(['The energy of signal y at lag equals to 0 is ' num2str(energy_y)]);

norm_corr=rxy/max(abs(rxy));
perct_corr=norm_corr*100;

figure;
subplot(4,1,1)
stem(nx,x,'filled','b')
xlabel('Time index (n)');
ylabel('Amplitude')
xlim([nx(1)-1 nx(end)+1])
title('Signal x(n)')
grid on;

subplot(4,1,2),
stem(ny,y,'filled','r')
xlabel('Time index (n)'), 
ylabel('Amplitude')
xlim([ny(1)-1 ny(end)+1])
title('Signal y(n)')
grid on;

subplot(4,1,3)
stem(l,rxy,'filled','k')
xlabel('Lag index (l)');
ylabel('Correlated Output')
title('Correlation')
grid on;

subplot(4,1,4)
stem(l,norm_corr,'filled','k')
xlabel('Lag index (l)'), 
ylabel('Normalized Correlated Output')
title('Normalized Correlation')
grid on;
