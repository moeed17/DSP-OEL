clc;clear all;close all;

[numbers, strings, raw] = xlsread('C:\Users\Abdul Moeed\OneDrive\Desktop\DSP Lab Codes\Lab4Task3');
numbers_1 = numbers(:,1);
numbers_3 = numbers(:,3);
org_num1 = 1;
num1_x = [ 1:length(numbers_1) ] - org_num1 ;
orgin_num3 = 1;
num3_x = [ 1:length(numbers_3) ] - orgin_num3 ;
[values,indices] = xcorr(numbers_1,numbers_3); 
[maxVal,position] = max(values);

disp(['The correlation at lag zero is: ' num2str(values(indices==0)) '.']);
disp(['The maximum correlation is at lag ' num2str(indices(position)) '.']);

normalized_correlation=values/max(abs(values));
percent_correlation=normalized_correlation*100;

subplot(5,1,1)
stem(num1_x,numbers_1,'filled','k')
xlabel('Time index (n)');
ylabel('Voltage')
xlim([num1_x(1)-1 num1_x(end)+1])
title('Voltage A')
grid on;
subplot(5,1,2)
stem(num3_x,numbers_3,'filled','r')
xlabel('Time index (n)');
ylabel('Voltage')
xlim([num3_x(1)-1 num3_x(end)+1])
title('Voltage C')
grid on;
subplot(5,1,3)
stem(indices,values,'filled','g')
xlabel('Indices');
ylabel('Correlation Output')
xlim([indices(1)-1 indices(end)+1])
title('Correlation')
grid on;
subplot(5,1,4)
stem(indices,normalized_correlation,'filled','b');
xlabel('Indices');
ylabel('Normalized Correlation Output')
xlim([indices(1)-1 indices(end)+1])
title('Normalized Correlation')
grid on;
subplot(5,1,5)
stem(indices,percent_correlation,'filled','Color',[0 1 1]);
xlabel('Indices');
ylabel('Percentage Correlation Output')
xlim([indices(1)-1 indices(end)+1])
title('Percentage Correlation')
grid on;