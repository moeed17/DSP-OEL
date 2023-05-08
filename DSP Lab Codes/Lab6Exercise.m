clc,clear,close all
[data,fs]=audioread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\noisy.wav');
Ts = 1/fs;
n = (0:length(data)-1);
t = n.*Ts; k = n;
Df = fs/length(data);
F = k.*Df;
Y = fft(data);
magY = abs(Y);
ang = angle(Y);
sound(data,fs);
subplot(5,1,1);
plot(t,data'),xlim([0 2])
subplot(5,1,2);
plot(F,magY);
grid on;
xlim([0 fs/2]);
xlabel('Frequency (Hz)');
ylabel('DFT Magnitude');
title('Discrete Fourier Transform');
subplot(5,1,3);
plot(F,magY);
grid on;
xlim([0 2000]);
xlabel('Frequency (Hz)');
ylabel('DFT Magnitude');
title('Discrete Fourier Transform');
cuttoff_frequency = 600;
orderOfFilter = 11;
normalizedFrequency=cuttoff_frequency/(fs/2);
[y,x] = butter(orderOfFilter,normalizedFrequency);
filteredSignal = filtfilt(y,x,data);
player = audioplayer(filteredSignal, fs);
pause(2)
play(player);
normalizedFFTOfFilteredSignal = abs(fft(filteredSignal))/length(filteredSignal);
subplot(5,1,4)
plot(t,filteredSignal),xlim([0 2])
xlabel('Time (Sec)');
ylabel('Amplitude');
title('Filterd Signal');
subplot(5,1,5)
plot(F,normalizedFFTOfFilteredSignal),xlim([0 2000]),grid on
xlabel('Frequency (Hz)');
ylabel('DFT Magnitude');
title('DFT Of Filtered Signal');