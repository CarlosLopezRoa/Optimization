%%
clc 
clear all
cd /Users/poincare/Dropbox/Courseware_/Op/04/
err = [];
temp =[];
i=3;
At=importdata('x100000.txt');
ytt=importdata('y100000.txt');
sizes=[10,100,1000,10000,100000];
A=At(1:sizes(i),1:4);
yt=ytt(1:sizes(i));
[m n]=size(A);
nu=2^(7-10);
e=ones(m,1);
%%
cvx_begin quiet
    variables w(n) gam y(m)
    minimize (nu*e'*y+(0.5)*w'*w)
      subject to
      diag(yt)*(A*w-e*gam) + y >= e 
      y >= 0
cvx_end
%%
sum(abs(sign(A*w-gam)-yt))/m/2
%%
i=4;
A=At(1:sizes(i),1:4);
yt=ytt(1:sizes(i));
[m n]=size(A);
%%
sum(abs(sign(A*w-gam)-yt))/m/2

