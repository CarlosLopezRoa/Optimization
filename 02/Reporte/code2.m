cd
/Users/poincare/Dropbox/Courseware_/Op/
Lab/Lab001/ds1 %Change directory
clear all %Clear workspace
clc %Clear prompt

function f = myfun(wi) %Cost Function
x = importdata('data_x.txt'); %obs x
y = importdata('data_y.txt'); %label y
d = %error function
(sigmf(sigmf(sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])- y); 
f = %cost function
sum((1./(1+d)+1./(1-d))-2); 
g = %Gradient
[((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
eye(4)
zeros(4,6)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0]))*([zeros(1,8) 1
0]*wi))'*sigmf(x*[1 0 0 0]',[1,0]));
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
eye(4)
zeros(4,6)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0]))*([zeros(1,8) 1
0]*wi))'*sigmf(x*[0 1 0 0]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
eye(4)
zeros(4,6)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0]))*([zeros(1,8) 1
0]*wi))'*sigmf(x*[0 0 1 0]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
eye(4)
zeros(4,6)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0]))*([zeros(1,8) 1
0]*wi))'*sigmf(x*[0 0 0 1]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0]))*([zeros(1,9)
1]*wi))'*sigmf(x*[1 0 0 0]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0]))*([zeros(1,9)
1]*wi))'*sigmf(x*[0 1 0 0]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0]))*([zeros(1,9)
1]*wi))'*sigmf(x*[0 0 1 0]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*((1-sigmf(sigmf(x
,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0]))*([zeros(1,9)
1]*wi))'*sigmf(x*[0 0 0 1]',[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
eye(4) zeros(4,6)]*wi),[1,0])) ;
((4*d)./((d.^2-1).^2))'*(sigmf(sigmf(
sigmf(x,[1,0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0])*(1-sigmf(sigmf(sigmf(x,[1,
0])*([eye(4)
zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1
0]*wi) +
sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0])*([zeros(1,9)
1]*wi),[1,0]))'*sigmf(sigmf(x,[1,0])*([
zeros(4,4) eye(4)
zeros(4,2)]*wi),[1,0]))]; end

w0= randn(10,1); %initial random w
opt = %options
optimset('GradObj','on'); 
[wi,fval] = %optimizer call
fminunc(@myfun,w0)
