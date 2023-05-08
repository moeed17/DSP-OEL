clear all;close all;clc;
 
F = 1050;
Fs = 8000;
Ts = 1/Fs;
N = 64;
n = [0:N-1];   
k = n;
Df = Fs/N;
Fk = k.*Df;
 
x = sin(2*pi*F*n*Ts+pi/4);
 
w = window(@gausswin,N);
xw = x.*w';  % Windowed signal
X  = abs(fft(x));
Xw = abs(fft(xw));
 
subplot(321)
plot(n*Ts,x,'g')
hold
stem(n*Ts,x,'filled','k')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Signal')
grid

subplot(322)
stem(Fk,X,'filled','k')
xlabel('Frequency (Hz)')
ylabel('DFT Magnitude')
title('Spectrum')
grid

subplot(323)
stem(n,w,'g','filled')
xlabel('Samples')
ylabel('Amplitude')
title('Window Function')
grid
axis tight
 
subplot(324)
stem(abs(fft(w)),'k','filled')
xlabel('Samples')
ylabel('Magnitude')
title('Spectrum of Window Function')
grid
axis tight

subplot(325)
plot(n*Ts,xw,'g')
hold
stem(n*Ts,xw,'filled','k')
xlabel('Time (sec)')
ylabel('Amplitude')
title('Windowed Signal')
grid
axis tight
 
subplot(326)
stem(Fk,Xw,'filled','k')
xlabel('Frequency (Hz)')
ylabel('Windowed DFT Magnitude')
title('Windowed Spectrum')
grid
