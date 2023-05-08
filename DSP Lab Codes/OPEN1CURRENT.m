%For Current
clc,clear,close all
Fs = 48000 ; 
nBits = 16 ; 
nChannels = 1 ;
ts = 1/Fs;
sec = 0.1;
t = [ts:ts:sec];
while 1
    recObj = audiorecorder(Fs,nBits,nChannels);
    recordblocking(recObj,sec);
    y = getaudiodata(recObj);
    temp_1 = max(y);
    temp_2 = min(y);
     gain = 10;
    y1 = y.'*gain;
    m=max(y1);
    subplot(2,1,1)
    plot(t,y1)
    xlabel('Time(sec)');
    ylabel('Current'); 
    title('CURRENT WAVEFORM'),grid on;
    ylim([-0.7 0.7])
    n = (0:length(y)-1);
    disp([num2str(max(y1))])
    t = n.*ts; 
    Df = Fs/length(y);
    F = n.*Df;
    Y = fft(y);
    magY = abs(Y);
    temp_var = max(magY);
    subplot(2,1,2)
    stem(F,magY);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    ylim([((-10/100)*temp_var) (temp_var+(temp_var*(10/100)))]),xlim([0 Fs/500]),grid on;
    title('Discrete Fourier Transform');
    
end