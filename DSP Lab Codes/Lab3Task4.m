clear all;close all;clc;

[x1,Fs1] = audioread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\drum.wav');
[x2,Fs2] = audioread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\moeed44100output.wav');
org_x1 = 1;
nx1 = [1:length(x1)]-org_x1;  
org_x2 = 1;                
nx2 = [1:length(x2)]-org_x2; 
z = conv(x1,x2);
nxz = [nx1(1)+nx2(1): nx1(end)+nx2(end)];

figure;
subplot(3,1,1)
plot(nx1,x1','r')
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nx1(1)-1 nx1(end)+1]);
title('Moeed.wav');
grid on;
subplot(3,1,2)
plot(nx2,x2','g')
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nx1(1)-1 nx1(end)+1]);
title('Drum.wav');
grid on;
subplot(3,1,3)
plot(nxz,z','b');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nx1(1)-1 nx1(end)+1]);
title('Convolved Output');
grid on;

sound(z,Fs2)
z1 = rescale(z);
audiowrite('C:\Users\Abdul Moeed\OneDrive\Desktop\MoeedConvolved.wav', z1 , Fs2 );