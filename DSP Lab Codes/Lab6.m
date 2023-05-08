clear all; clc; close all; 
[y,Fs] = audioread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\noisy.wav');
Ts = 1/Fs; 
n = [0:length(y)-1];
t = n.*Ts;
k = n;
Df = Fs./length(y);
F = k.*Df;
Y = fft(y);
magY = abs(Y); 
sound(y,Fs);

figure, 
%subplot(2,1,1);
plot(F,magY); 
grid on; 
xlim([0 Fs/2]);
xlabel('Frequency (Hz)'); 
ylabel('DFT Magnitude');
title('Discrete Fourier Transform');
 
%subplot(2,1,2);
%plot(F,magY); 
%grid on; 
%xlim([0 2000]);
%xlabel('Frequency (Hz)'); 
%ylabel('DFT Magnitude');
%title('Discrete Fourier Transform');