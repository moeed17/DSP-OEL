clc , clear , close all
defaultHeight = 1;
Fs = 48000 ; 
nBits = 16 ; 
nChannels = 1 ;
ts = 1 / Fs ;
sec = 0.1 ;
len = sec * Fs ;
t = ( 0 : ts : sec ) ;
voltageAcrossAudioJackPins = 0.48 ;
kElectricVoltage = 220 ;
fprintf( "Plots:\n1)Voltage\n2)Current\n" )
iNput = input( "Enter the number of plot: " ) ;
check = validInputChecker ;
[ gain , string , range ] = validINputChecker ( check , iNput , voltageAcrossAudioJackPins , kElectricVoltage ) ;
win = input ("Enable windowing of the input (Y/N)? ",'s');
validAns = validINPutChecker( check , win ) ;
if validAns == 1
    windows =["1)Bartlett-Hann window","2)Bartlett window",...
    "3)Blackman window","4)Blackman-Harris window","5)Bohman window", ...
    "6)Chebyshev window","7)Flat Top window","8)Gaussian window",...
    "9)Hamming window","10)Hann window","11)Kaiser window",...
    "12)Nuttall's Blackman-Harris window","13)Parzen (de la Vallée-Poussin) window",...
    "14)Rectangular window","15)Tapered cosine window","16)Triangular window","17)Taylor window"];
    fprintf('%s\n',windows)
    winType = input ("Which window to apply ?");
    winReturn = winInput( check , winType , len );
    col = 2 ; r1 = 1 ; r2 = 3 ; r3 = 5 ; r4 = 2 ; r5 = 4 ; r6 = 6 ; 
    strmag = ' Magnitude representation of Signal before windowing ';
    strphs = ' Phase representation of Signal before windowing ';
else
    col = 1 ; r1 = 1 ; r2 = 2 ; r3 = 3 ;
    strmag = ' Magnitude representation of Signal ';
    strphs = ' Phase representation of Signal ';
end
h = figure ;
maxfreq = 1000 ;
while 1
    recObj = audiorecorder( Fs , nBits , nChannels ) ;
    recordblocking( recObj , sec ) ;
    y = getaudiodata( recObj ) ;
    y1 = y .'* gain ;
    n1 = ( 0 : len - 1 ) ;
    t = n1 .* ts ; 
    Df = Fs / length( y ) ;
    F = n1 .* Df ;
    Y = fft( y1 ) ;
    magY = abs( Y ) ;
    ad_magY = magY * 2 / len ;
    ad_magY ( 1 ) = ad_magY ( 1 ) / 2 ;
    temp_var1 = max ( y1 ) ;
    temp_var2 = max ( ad_magY ) ;
    phaseY = angle( Y ) ;
    ad_phaseY = phaseY * 2 / len ;
    ad_phaseY ( 1 ) = ad_phaseY(1) / 2 ;
    temp_var3 = max ( ad_phaseY ) ;
    if ishandle( h ) ~= 1
        break
    end
    subplot( 3 , col , r1 )
    plot( t , y1 )
    xlabel( 'Time(sec)' ) ;
    ylabel(string) ; 
    title( 'Signal in Time Domain' ) , grid on ;
    text ( t ( len ) - ( t ( round( len * 0.1 ) ) ) , range( 2 ) - ( range ( 2 ) * 0.1 ) , "max val : " + num2str ( temp_var1 ) )
    % text will prompt correctly on full viewing the graph/plot on full screen
    ylim( range )
    subplot( 3 , col , r2 )
    stem( F , ad_magY ) ;
    xlabel( 'Frequency (Hz)' ) ;
    ylabel( 'Magnitude' ) ;
    axis( [ 0 , maxfreq 0 , temp_var2 + ( temp_var2 * ( 10 / 100 ) ) ] ) , grid on ;
    text ( maxfreq - (maxfreq*0.1) , temp_var2 - ( temp_var2 * ( 10 / 100 ) )  , "max val : " + num2str ( temp_var2 ) )
    % text will prompt correctly on full viewing the graph/plot on full screen
    title( strmag ) ;
    subplot( 3 , col , r3 )
    stem( F , ad_phaseY ) ;
    xlabel( 'Frequency (Hz)' ) ;
    ylabel( 'Phase' ) ;
    text ( maxfreq - (maxfreq*0.1) , temp_var3 - ( temp_var3 * ( 10 / 100 ) )  , "max val : " + num2str ( temp_var3 ) )
    % text will prompt correctly on full viewing the graph/plot on full screen
    axis( [ 0 , maxfreq -temp_var3 - ( temp_var3 * ( 10 / 100 ) ) , temp_var3 + ( temp_var3 * ( 10 / 100 ) ) ] ) , grid on ;
    title( strphs ) ;
    if validAns == 1
        winReturn = winReturn.' ;
        y1w = winReturn .* y1 ;
        subplot ( 3 , col , r4 )
        plot ( t , y1w )
        xlabel( 'Time(sec)' ) ;
        ylabel( string ) ; 
        title( 'Signal after applying windowing in Time Domain' ) , grid on ;
        ylim( range )
        Yw = fft ( y1w ) ;
        magYw = abs(Yw) ;
        ad_magYw = magYw * 2 / length(y1) ;
        ad_magYw(1) = ad_magYw(1) / 2 ;
        subplot( 3 , col , r5 )
        stem( F , ad_magYw ) ;
        xlabel( 'Frequency (Hz)' ) ;
        ylabel( 'Magnitude' ) ;
        axis( [ 0 , maxfreq 0 , temp_var2 + temp_var2 * ( 10 / 100 ) ] ) , grid on ;
        title( 'Magnitude representation of the signal after windowing' ) 
        subplot( 3 , col , r6 )
        stem( F , ad_phaseY ) ;
        xlabel( 'Frequency (Hz)' ) ;
        ylabel( 'Phase' ) ;
        xlim( [ 0 , maxfreq ] ) , grid on ;
        title( 'Phase representation of the signal after windowing' ) ;
    end
end