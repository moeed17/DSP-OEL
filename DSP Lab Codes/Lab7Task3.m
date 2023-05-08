clear all; close all; clc;
 
F1 = 500;
F2 = 600;
Fs = 8000;
Ts = 1/Fs;
N = 64;
n =[0:N-1];   
k = n;
Df = Fs/N;
Fk = k.*Df;
 
x1 = sin(2*pi*F1*n*Ts);
X1 = abs(fft(x1,N));
x2 = sin(2*pi*F2*n*Ts);
X2 = abs(fft(x2,N));
 
subplot(4,1,1)
plot(n*Ts,x1,'g')
hold
stem(n*Ts,x1,'filled','k')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Signal')
grid
axis tight
subplot(4,1,2)
stem(Fk,X1,'g','filled')
xlabel('Frequency (Hz)')
ylabel('DFT Magnitude')
title('Spectrum')
xlim([0 Fs])
grid
 
subplot(4,1,3)
plot(n*Ts,x2,'g')
hold
stem(n*Ts,x2,'filled','k')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Signal')
grid
axis tight
 
subplot(4,1,4)
stem(Fk,X2,'g','filled')
xlabel('Frequency (Hz)')
ylabel('DFT Magnitude')
title('Spectrum')
xlim([0 Fs])
grid
