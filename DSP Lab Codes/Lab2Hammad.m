clc,clear,close all
fs = 8000;
recObj = audiorecorder(fs,8,1);
disp('Start speaking.')
recordblocking(recObj, 2);
disp('End of Recording.');
y = getaudiodata(recObj);
audiowrite('C:\Users\Hammad\Desktop\DSP\hammad.wav', y,fs);
[y,Fs] = audioread('C:\Users\Hammad\Desktop\DSP\hammad.wav');
bits = input("No. of bits : ");
method = input ("1)Round"+newline+'2)Ceil'+newline+'3)Floor'+newline+"Method of quantization: ");    
max=2^(bits-1)-1;
y=max*y;
if method == 1
    xq = round(y);
elseif method == 2
    xq = ceil(y);
elseif method == 3
    xq = floor(y);
end
restoredefaultpath
sound(y,Fs);
pause(5)
sound(xq,Fs);