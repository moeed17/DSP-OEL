clear all;close all;clc;

[y,Fs] = audioread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\moeed44100output.wav');
bits = input("No. of bits : ");
method = input ("1)Round"+newline+'2)Ceil'+newline+'3)Floor'+newline+"Method of quantization: ");    
max=(2^(bits-1))-1;
y=max*y;
if method == 1
    xq = round(y)/max;
elseif method == 2
    xq = ceil(y)/max;
elseif method == 3
    xq = floor(y)/max;
end
y=y/max;
restoredefaultpath
%sound(y,Fs);
%pause(5)
sound(xq,Fs);
