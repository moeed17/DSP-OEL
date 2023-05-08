%For Voltage OEL_1
clc,clear,close all
Fs = 48000 ;
nBits = 16 ;
nChannels = 1 ;
ts = 1/Fs;
sec = 0.2;
t = [ts:ts:sec];
while 1
recObj = audiorecorder(Fs,nBits,nChannels);
recordblocking(recObj,sec);
y = getaudiodata(recObj);
temp_1 = max(y);
temp_2 = min(y);
gain = (220/0.48);
y1 = y.'*gain;
m=max(y1);
subplot(3,1,1)
plot(t,y1,'m')
xlabel('Time(sec)');
ylabel('Amplitude');
title('Voltage Waveform'),grid on;
ylim([-360 360]),xlim([0 0.2]);
n = (0:length(y)-1);
disp([num2str(m)])
t = n.*ts;
Df = Fs/length(y);
F = n.*Df;
Y = fft(y1);
magY = abs(Y);
ad_magY = magY*2/length(y1);
temp_var = max(ad_magY);
subplot(2,1,2)
stem(F,ad_magY,'m');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
ylim([((-10/100)*temp_var) (temp_var+(temp_var*(10/100)))]),
xlim([0 Fs/500]),grid on;
title('Discrete Fourier Transform');
end