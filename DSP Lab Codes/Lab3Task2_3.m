clear all;close all;clc;

x1 = [-2.5 -2 -1.5 -1 1 1.5 2 2.5];
x2 = [2 4 8 10 12 14 16 18];
x3 = [0 -0.5 -1 0 0.5 1 0 -0.5 ];

orgin_x1 = 1;             
nx1 = [1:length(x1)]-orgin_x1;  
orgin_x2 = 1;                
nx2 = [1:length(x2)]-orgin_x2; 
orgin_x3 = 1;                
nx3 = [1:length(x3)]-orgin_x3;

%commutative
%L.H.S:
y1 = conv(x1,x2);
%R.H.S:
y2 = conv(x2,x1);
ny1 = [nx1(1)+nx2(1): nx1(end)+nx2(end)];
ny2 = [nx2(1)+nx1(1): nx2(end)+nx1(end)];

figure;
subplot(2,1,1),
stem(ny1,y1,'k','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny1(1)-1 ny1(end)+1]);
title('(x1n*x2n)');
grid on;
subplot(2,1,2),
stem(ny2,y2,'k','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([ny2(1)-1 ny2(end)+1]);
title('(x2n*x1n)');
sgtitle('Commutative Property')
grid on;

%associative x1n*[x2n*x3n]=[x1n*x2n]*x3n
%L.H.S:
a1 = conv(x2,x3);
a2 = conv(x1,a1);
na1 = [nx1(1)+nx2(1)+nx3(1): nx1(end)+nx2(end)+nx3(end)];
%R.H.S:
a3 = conv(x1,x2);
a4 = conv(a3,x3);
na2 = [nx1(1)+nx2(1)+nx3(1): nx1(end)+nx2(end)+nx3(end)];
figure;
subplot(2,1,1),
stem(na1,a2,'g','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([na1(1)-1 na1(end)+1]);
title('x1n*[x2n*x3n]');
grid on;
subplot(2,1,2),
stem(na2,a4,'g','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([na2(1)-1 na2(end)+1]);
title('[x1n*x2n]*x3n');
sgtitle('Associative Property')
grid on;

%distributive x1n*[x2n+x3n] = x1n*x2n + x1n*x3n
%L.H.S:
new_signal_1 = x2+x3;
orgin_new_signal_1 = orgin_x2 + orgin_x3 ;
ns1 = [1:length(new_signal_1)]-orgin_new_signal_1; 
d1 = conv(x1,new_signal_1);
nd1=[nx1(1)+ns1(1): nx1(end)+ns1(end)];
%R.H.S:
conv_d1 = conv(x1,x2);
conv_d2 = conv(x1,x3);
nconv_d1 = [nx1(1)+nx2(1): nx1(end)+nx2(end)];
nconv_d2 = [nx1(1)+nx3(1): nx1(end)+nx3(end)];
nd2  = nconv_d1+nconv_d2 ;
d2 = conv_d1 + conv_d2  ;
figure;
subplot(2,1,1),
stem(nd1,d1,'m','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nd1(1)-1 nd1(end)+1]);
title('x1n*[x2n+x3n]');
grid on;
subplot(2,1,2),
stem(nd2,d2,'m','filled');
xlabel('Time index (n)');
ylabel('Amplitude');
xlim([nd2(1)-1 nd2(end)+1]);
title('(x1n*x2n) + (x1n*x3n)');
sgtitle('Distributive Property')
grid on;