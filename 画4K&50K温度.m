%filename: ploTemp.m
%purpose：ploting data of 4K/50K
%version: 20200303

clear all;
clc;

%数据检查分类
foldername='E:\code\matlab\2020.2\';
filelist=ls([foldername,'*.txt']);
fid=fopen('recordsum.dat','w');
for i=1:size(filelist,1)
    filename=filelist(i,:);
    [a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24]=textread([foldername,filename],'%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %f %f %s %s');
    for j=1:length(a21)
        fprintf(fid,'%s %s %f %f\n',cell2mat(a1(j)),cell2mat(a2(j)),a21(j),a22(j));
    end
end
fclose(fid);

%画图
[x1 x2 y1,y2]=textread('recordsum.dat','%s %s %f %f');
xx=datenum(cell2mat(strcat(x1,{32},x2)),'yyyy-mm-dd HH:MM:SS'); %字符串连接，元包转数组，日期格式转数值
figure(1);
[ax,h1,h2]=plotyy(xx,y1,xx,y2); %图像句柄
dateaxis('x',2); %时间轴
set(gca,'XTickLabelRotation',30);
set(ax(1),'ylim',[2.65,3],'yTick',[2.65:0.05:3]); %左坐标轴范围和步长
set(ax(2),'ylim',[20,55],'yTick',[20:1:55]); %右
set(ax(1),'fontsize',10); 
set(ax(2),'fontsize',10);
title('接收机冷板温度变化','FontName','宋体','FontSize',15,'FontWeight','bold'); 
set(get(ax(1),'ylabel'),'string','T(K)_{4K}','fontsize',15); %设置线条
set(get(ax(2),'ylabel'),'string','T(K)_{50K}','fontsize',15);
legend('4k','50k','Location','NorthWest'); %线条标签
saveas(1,'save.png')
