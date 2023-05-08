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
    gain = 10;
    y1 = y.'*gain;
    m=max(y1);
    subplot(3,1,1)
    plot(t,y1),xlim([0 0.2]);
    xlabel('Time(sec)');
    ylabel('Current'); 
    title('CURRENT WAVEFORM'),grid on;
    ylim([-0.5 0.5])
    n = (0:length(y)-1);
    disp([num2str(max(y))])
    t = n.*ts; 
    Df = Fs/length(y);
    F = n.*Df;
    Y = fft(y1);
    magY = abs(Y);
    ad_magY = magY*2/length(y1);
    temp_var = max(ad_magY);
    subplot(3,1,2)
    stem(F,ad_magY);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    ylim([((-10/100)*temp_var) (temp_var+(temp_var*(10/100)))]),xlim([0 2000]),grid on;
    title('Discrete Fourier Transform');
    w=window(@taylorwin,length(y1));
    w=w.';
    y1w=w.*y1;
    Yw=fft(y1w);
    magYw=abs(Yw);
    ad_magYw = magYw*2/length(y1);
    subplot(3,1,3)
    stem(F,ad_magYw);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    xlim([0 2000]),grid on;
    title('Discrete Fourier Transform With Windowing');
end