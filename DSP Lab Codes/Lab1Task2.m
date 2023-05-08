clear all;close all;clc;
F=1000;
Fs=8000;
Ts=1/Fs;
nTs = [ 0 :Ts : 1 ];
x1=cos(2*pi*F*nTs);
sound(x1)