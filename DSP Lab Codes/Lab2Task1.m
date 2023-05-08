clear all;close all;clc;

fd_1=1/125;
fd_2=1/150;
N=250;
n=[0:N-1];

q=input('No. of digits after decimal points to be retained (0-9): ');

x_1=cos(2*pi*fd_1*n);
x_2=cos(2*pi*fd_2*n);

Px_1=sum(abs(x_1).^2)/N;
Px_2=sum(abs(x_2).^2)/N;

a=input('Select the method of quantization, Press 1 for Round-off, 2 for Floor and 3 for Ceil: ');

if a==1
xq_1 = round(x_1*10^q)/10^q; %MATLAB jungli he usko smjhane k liye k itne round off krke do to multiply by 10 
xq_2 = round(x_2*10^q)/10^q; %and then divide by 10
elseif a==2
xq_1 = floor(x_1*10^q)/10^q;
xq_2 = floor(x_2*10^q)/10^q;  %383.3 round off hojayega 383 to agr 383.3 chaiye to (383.3*10)/10=383.3 
elseif a==3 
xq_1 = ceil(x_1*10^q)/10^q;
xq_2 = ceil(x_2*10^q)/10^q;
end

x1_e=(-x_1)+xq_1;
x2_e=(-x_2)+xq_2;
Pe_1=sum(abs(x1_e).^2)/N;
Pe_2=sum(abs(x2_e).^2)/N;

SQNR_1=10*log10(Px_1/Pe_1);
SQNR_2=10*log10(Px_2/Pe_2);
disp(['The signal to Quantization Noise Ratio for signal 1 is: ' num2str(SQNR_1) ' dB.' ]);
disp(['The signal to Quantization Noise Ratio for signal 2 is: ' num2str(SQNR_2) ' dB.' ]);

subplot(2,1,1)
plot(n,xq_1),grid on,xlabel('Indices'),ylabel('Amplitude'),title('x1n');
subplot(2,1,2)
plot(n,xq_2),grid on,xlabel('Indices'),ylabel('Amplitude'),title('x2n');

