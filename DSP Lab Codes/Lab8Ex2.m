% *******task 1
% clc,clear,close all
% Num = (1);
% Den = poly((0));
% sys=tf(Num,Den);
% zeros=roots(Num);
% poles=roots(Den);
% figure;
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num,Den);
% mag=abs(H);
% plot(w,mag)
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% 
% *******task 2
%  clc,clear,close all
%  Num = (1);
%  Den = poly((-0.5)); 
%  sys=tf(Num,Den);
%  zeros=roots(Num);
%  poles=roots(Den);
% figure;
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num,Den);
% mag=abs(H);
% plot(w,mag)
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid

% ******task 3
% clc,clear,close all
% Num = (1);
% Den = poly((0.5)); 
% sys=tf(Num,Den);
% zeros=roots(Num);
% poles=roots(Den);
% figure;
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num,Den);
% mag=abs(H);
% plot(w,mag)
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid

% task4*******
% clc,clear,close all
% Num1 = (1);
% Den1 = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% task 5*******
% clc,clear,close all
% Num1 = (1);
% Den1 = poly([(-0.5-(1i*(pi/2))),(-0.5+(1i*(pi/2)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% task 6*******
% clc,clear,close all
% Num1 = (1);
% Den1 = poly([(0.5-(1i*(pi/2))),(0.5+(1i*(pi/2)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% task 7******
% clc,clear,close all
% Num1 = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]);
% Den1 = poly([(-0.2-(1i*(pi/4))),(-0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% task 8*******
% clc,clear,close all
% Num1 = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]);
% Den1 = poly([(0.2-(1i*(pi/4))),(0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% Num1 = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]);
% Den1 = poly([(-0.2-(1i*(pi/4))),(-0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% task 9*******
% Num1 = poly([(0-(1i*(pi/2))),(0+(1i*(pi/2)))]);
% Den1 = poly([(0.2-(1i*(pi/4))),(0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% Num1 = poly([(-0.1-(1i*(pi/2))),(-0.1+(1i*(pi/2)))]);
% Den1 = poly([(0.2-(1i*(pi/4))),(0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid
% Num1 = poly([(0.1-(1i*(pi/2))),(0.1+(1i*(pi/2)))]);
% Den1 = poly([(0.2-(1i*(pi/4))),(0.2+(1i*(pi/4)))]);
% sys1=tf(Num1,Den1);
% zeros=roots(Num1);
% poles=roots(Den1);
% figure;
% subplot(3,1,1)
% pzmap(sys1,'r')
% xlim([-3 3])
% ylim([-3 3])
% subplot(3,1,2)
% [H,w]=freqs(Num1,Den1);
% mag=abs(H);
% plot(w,mag,'r')
% xlabel('Frequency (\omega)')
% ylabel('Gain    |H(\omega)|')
% title('Frequency Response')
% axis tight
% grid
% subplot(3,1,3)
% impulse(sys1,'r')
% grid