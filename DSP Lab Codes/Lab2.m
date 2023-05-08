clear all;close all;clc;

fd=1/50;
N=500;
n=[0:N-1];

q=input('No. of digits after decimal points to be retained (0-9): ');

x=cos(2*pi*fd*n);
Px=sum(abs(x).^2)/N;

a=input('Select the method of quantization, Press 1 for Round-off, 2 for Floor and 3 for Ceil: ');

if a==1
xq = round(x*10^q)/10^q; %MATLAB jungli he usko smjhane k liye k itne round off krke do to multiply by 10 
                         %and then divide by 10
elseif a==2
xq = floor(x*10^q)/10^q; %383.3 round off hojayega 383 to agr 383.3 chaiye to (383.3*10)/10=383.3 
elseif a==3 
xq = ceil(x*10^q)/10^q;
end

xe=xq-x;
Pe=sum(abs(xe).^2)/N;

SQNR=10*log10(Px/Pe);
disp(['The signal to Quantization Noise Ratio is: ' num2str(SQNR) ' dB.' ]);

figure,
subplot(2,1,1);
stem(n,x,'filled');
hold;
stem(n,xq,'r','filled');
grid;
xlabel('indices');
ylabel('Amp');
xlim([0 49]);
ylim([-2.1 2.1]);
legend('DTCV','DTDV');

subplot(2,1,2);
plot(n,xe, 'k','Linewidth',2);
grid;
xlabel('indices');
ylabel('Error');
xlim([0 49]);
  