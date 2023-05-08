% task 1
% clc,clear,close all
% angle = 0;
% amp = 0.9;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
%task 2
% clc,clear,close all
% angle = pi;
% amp = 0.9;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle)),(amp*exp(-1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 3
% clc,clear,close all
% angle = 0;
% amp = 1;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 4
% clc,clear,close all
% angle = pi;
% amp = 1;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle)),(amp*exp(-1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 5
% clc,clear,close all
% angle = 0;
% amp = 1.1;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 6
% clc,clear,close all
% angle = pi;
% amp = 1.1;
% Num = poly((0));
% Den = poly([(amp*exp(1i*angle)),(amp*exp(-1i*angle))]);
% sys=tf(Num,Den,1); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 7 error arha hai ismai 
% clc,clear,close all
% angle = (2*pi)/3;
% amp = 0.8944;
% Num = poly([(amp*exp(1i*angle)),(amp*exp(-1i*angle))]);
% Den = poly((0));
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r') ye line comment krlena agar run krna hai tou
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% lab 8
% clc,clear,close all
% angle1 = (pi)/2;
% amp1 = 1;
% angle2 = (pi)/4;
% amp2 = 0.8;
% Num = poly([(amp1*exp(1i*angle1)),(amp1*exp(-1i*angle1))]);
% Den = poly([(amp2*exp(1i*angle2)),(amp2*exp(-1i*angle2))]);
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% lab 9
% clc,clear,close all
% angle1 = (pi)/2;
% amp1 = 1;
% angle2 = (pi)/4;
% amp2 = 1;
% Num = poly([(amp1*exp(1i*angle1)),(amp1*exp(-1i*angle1))]);
% Den = poly([(amp2*exp(1i*angle2)),(amp2*exp(-1i*angle2))]);
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 10
% clc,clear,close all
% angle1 = (pi)/2;
% amp1 = 1;
% angle2 = (pi)/4;
% amp2 = 1.2;
% Num = poly([(amp1*exp(1i*angle1)),(amp1*exp(-1i*angle1))]);
% Den = poly([(amp2*exp(1i*angle2)),(amp2*exp(-1i*angle2))]);
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 11
% clc,clear,close all
% angle1 = (pi)/2;
% amp1 = 0.8;
% angle2 = (pi)/4;
% amp2 = 0.8;
% Num = poly([(amp1*exp(1i*angle1)),(amp1*exp(-1i*angle1))]);
% Den = poly([(amp2*exp(1i*angle2)),(amp2*exp(-1i*angle2))]);
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end
% task 12
% clc,clear,close all
% angle1 = (pi)/2;
% amp1 = 1.2;
% angle2 = (pi)/4;
% amp2 = 0.8;
% Num = poly([(amp1*exp(1i*angle1)),(amp1*exp(-1i*angle1))]);
% Den = poly([(amp2*exp(1i*angle2)),(amp2*exp(-1i*angle2))]);
% sys=tf(Num,Den); 
% figure,
% subplot(3,1,1)
% pzmap(sys)
% xlim([-3 3]), ylim([-1.5 1.5])
% subplot(3,1,2)
% [H,w]=freqz(Num,Den);
% mag=abs(H);
% plot((w*180)/pi,mag)
% xlabel('\omega (in degrees)')
% ylabel('Gain |H(\omega)|')
% title('Frequency Response')
% xlim([0 180])
% grid
% subplot(3,1,3)
% impulse(sys,'r')
% grid
% H=dfilt.df1(Num,Den); 
% A=isfir(H);
% if A == 0
%     disp('IIR')
% elseif A == 1
%     disp("FIR")
% end