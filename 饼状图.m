clear;clc;
% 表二：民族
mingzhu=[22 4 9 1];
explode = [0 0 0 0];
ph=pie3(mingzhu,explode); % 参数explode表明将值等于1的饼切割出来显示
legend(ph(2:4:end),{'岗位聘用（青海）','岗位聘用（南京）','项目聘用（青海）','项目聘用（南京）'});
%close(gcf);clear ph;


clear;clc;
% 表二：民族
mingzhu=[2 2 8 1 24];
explode = [0 0 0 0 0];
ph=pie3(mingzhu,explode); % 参数explode表明将值等于1的饼切割出来显示
legend(ph(2:4:end),{'研究员','副高级岗位（副研究员）','副高级岗位（高级工程师）','六级职员（女）','中级及以下'});
%close(gcf);clear ph;


clear;clc;
% 表二：民族
mingzhu=[8 4 13 1 9 1];
explode = [0 0 0 0 0 0];
ph=pie3(mingzhu,explode); % 参数explode表明将值等于1的饼切割出来显示
legend(ph(2:4:end),{'35岁以下（男）','35岁以下（女）','35-50岁（男）','35-50岁（女）','50岁以上（男）','50岁以上（女）'});
%close(gcf);clear ph;

% 配合使用后期图片 手动调整编辑器
