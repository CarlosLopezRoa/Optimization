%%
cd /Users/poincare/Dropbox/Courseware_/Op/Lab/Lab001/ds2
clear all
clc
%epsilon=[];
w0= randn(10,1);
opt = optimset('GradObj','on');
opt = optimset('PlotFcns',@optimplotfval,'MaxFunEvals',5000);
clear wi;
[wi,fval,flag,output,grad,hess] = fminunc(@myfun,w0,opt);
pause(10)
%%
x = importdata('x100.txt');
y = importdata('y100.txt');
p = round(sigmf(sigmf(sigmf(x,[1,0])*([eye(4) zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1 0]*wi) + sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4) zeros(4,2)]*wi),[1,0])*([zeros(1,9) 1]*wi),[1,0]));
[p y];
sum(abs(p - y))/length(y)

%%
x = importdata('x1000.txt');
y = importdata('y1000.txt');
p = round(sigmf(sigmf(sigmf(x,[1,0])*([eye(4) zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1 0]*wi) + sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4) zeros(4,2)]*wi),[1,0])*([zeros(1,9) 1]*wi),[1,0]));
[p y];
sum(abs(p - y))/length(y)