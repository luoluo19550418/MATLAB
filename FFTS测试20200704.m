%filename: plo.m
%purpose：ploting data of FFTS
%version: 20200703

%clear all;
%clc;

%数据检查分类
foldername='E:\pmodlh\夏季维护2020\运行组\FFTS\USB\';
filelist=ls([foldername,'*.dat']);
fid=fopen('recordsum.dat','w');
a=[];b=[]; % a存(16384,22)矩阵
for i=1:size(filelist,1)
    filename=filelist(i,:);
    [a1,a2]=textread([foldername,filename],'%f %f');
    a2 = -82+10*log10(a2+1); %算dB
    a=[a,a2];
    b2=a2-a(:,1);
    b=[b,b2];
end
fclose(fid);
b(:,1)=[] %delete column 1
b(16284:16384,:)=[]; b(1:100,:)=[]; %删除前20行和后20行
c= mean(b,1); %各列求平均

%plot
figure(1);
x=linspace(11,31,21);
plot(x, c, '+-', 'LineWidth', 2, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'b', 'MarkerSize', 8);
title('衰减增大时FFTS功率线性变化','FontName','宋体','FontSize',10,'FontWeight','bold');
xlabel('衰减值（dB）','FontName','宋体','FontSize',10,'FontWeight','bold');
ylabel('FFTS功率变化值（dB）','FontName','宋体','FontSize',10,'FontWeight','bold');
saveas(1,'FFTSdB.png')
