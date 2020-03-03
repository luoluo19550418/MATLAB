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
    fprintf(fid,'%3.1f %3.1f\n',a21(i),a22(i));
    %fprintf(fid,'%s %s %3.1f %3.1f\n',cell2mat(a1(i)),cell2mat(a2(i)),a21(i),a22(i))
    end
end
fclose(fid);
%画图
[y1,y2]=textread('recordsum.dat','%f %f');
%[x1,x2,y1,y2]=textread('recordsum.dat','%s %s %f %f');
%figure(1);
%[ax,h1,h2]=plotyy(x,y1,x,y2);
%axis([1 40000 2.6 2.9])
