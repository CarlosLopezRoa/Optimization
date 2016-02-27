%%
clc 
clear all
cd /Users/poincare/Dropbox/Courseware_/Op/04/
err = zeros(5,1);
tic
for i = 1:20
A=importdata('x1000.txt');
yt=importdata('y1000.txt');
[m n]=size(A);
nu=2^(i-10);
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
err(i)=sum(sign(A*w-gam+y)-yt)/m;

end
toc
err