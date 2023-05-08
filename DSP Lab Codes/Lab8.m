clc,clear,close all 
Num = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]); 
Zeros=roots(Num); 
Den = poly([-1,-1]);
poles=roots(Den); 
sys=tf(Num,Den);
figure; 
subplot(3,1,1); 
pzmap(sys); 
xlim([-2 2]);
ylim([-4 4]); 
subplot(3,1,2); 
[mag,phase,w]=bode(sys); 
mag=squeeze(mag); 
plot(w,mag); 
subplot(3,1,3); 
impulse(sys); 
H=dfilt.df1(Num,Den);
A=isfir(H);
disp(A)