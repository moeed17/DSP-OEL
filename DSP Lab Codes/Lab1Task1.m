clc,clear,close all
f=[500,2000,3000,4500];
Fs= 5000;
Ts = 1/Fs;
figure,
for i=1:length(f)
    F = f(i); 
    t = [ 0 : 0.000005 : 0.02 ];
    x1t = sin(2*pi*F*t);
    hold on 
    subplot (2,2,i);
    plot(t,x1t,'LineWidth',2,'color','k'); 
    ylabel('Amp');
    xlabel('Time (Sec)')
    xlim([0 0.005]);
    grid on;
    title('CTCV Sinusoid');
end
hold off
figure,
for i=1:length(f)
    F=f(i);
    nTs = [ 0 : Ts : 0.02 ]; 
    n = [1 : length(nTs)-1 ];
    x1n = sin( 2*pi*F*nTs );
    hold on
    subplot ( 2,2,i );
    stem( nTs,x1n,'LineWidth',2,'color','m' );
    grid on;
    title( 'DTDV Sampled' ) 
    xlabel( 'discrete time (sec)' );
    xlim([0 0.005]);
    ylabel( 'Amp' );
end
hold off