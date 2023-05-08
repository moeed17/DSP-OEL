clc,clear,close all
defaultHeight = 1;
Fs = 48000 ; 
nBits = 16 ; 
nChannels = 1 ;
ts = 1/Fs;
sec = 0.2;
t = (ts:ts:sec);
h = figure;
while 1
    recObj = audiorecorder(Fs,nBits,nChannels);
    recordblocking(recObj,sec);
    y = getaudiodata(recObj);
    gain = 10;
    y1 = y.'*gain;
    n1 = (0:length(y)-1);
    n2 = (-length(y)/2:length(y)/2-1);
    t = n1.*ts; 
    disp([num2str(max(y))]) 
    Df = Fs/length(y);
    F = n2.*Df;
    F = fftshift(F);
    Y = fftshift(fft(y1));
    magY = abs(Y);
    ad_magY= magY*2/length(y1);
    ad_magY= fftshift(ad_magY);
    temp_var = max(ad_magY);
    if ishandle(h) ~= 1
        break
    end
    subplot(3,1,1)
    plot(t,y1)
    xlabel('Time(sec)');
    ylabel('Current'); 
    title('Signal in Time Domain'),grid on;
    ylim([-0.7 0.7])
    subplot(3,1,2)
    stem(F,ad_magY);
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    axis([((-Fs/2)*temp_var) ((Fs/2)*temp_var) 0 (temp_var+(temp_var*(10/100)))])
    xlim([0 800]),grid on;
    %axis([ -Fs/2 Fs/2 0 temp_var+temp_var*(10/100)]),grid on;
    title('Frequency Response of the Signal');
    
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
    xlim([0 600]),grid on;
    title('Discrete Fourier Transform With Windowing');
end