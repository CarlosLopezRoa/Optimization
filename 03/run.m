%%
clear all
global n m a b c;
n=100; m=500; rng(1); %Setting the dimensions and seed 
a=randn(n,m); b=randn(m,1); c=randn(n,1); %Random parameters
a=randi([-1,1],n,m); b=randi([100,1000],m,1); c=randi([1,100],n,1);
%%
tic
clear xo
cvx_begin
    variable xo(n)
    minimize( c'*xo - sum(log(b-a'*xo))  ) %
    subject to
    a'*xo-b<=0
cvx_end
toc
%%
%rng(sum(clock));
tic
x=abs(randi([1,10],n,1));
opt=optimset('Display','iter','PlotFcns',@optimplotfval,'MaxFunEvals',50000,'MaxIter',5000,'GradObj','on');
[xi,fval,flag,output]=fminunc(@myfun,x,opt)
toc
%%
fo=-226894;
%rng(sum(clock));
iter=25000; 
alphat=[0.1, 0.2, 0.3, 0.4];
betat=[0.2, 0.4, 0.6, 0.8];
fhh=zeros(iter,length(alphat),length(betat));
timeh=zeros(length(alphat),length(betat));
for ai=1:length(alphat)
    for bi=1:length(betat)
        x=abs(randi([1,10],n,1));
        fh=zeros(iter,1);
        tic
        for i = 1:iter
            [f,g]=myfun(x);
            t=1.0; alpha=alphat(ai); beta=betat(bi);
            while imag(myfun(x-t*g))~=0
                t=beta*t;
            end
            while myfun(x-t*g)>(f-alpha*t*(g'*g))
                t=beta*t;
            end
            x=x-t*g;
            fh(i)=f;
        end
        [ai,bi]
        fhh(:,ai,bi)=fh;
        timeh(ai,bi)=toc
    end
end
%%
iter=200; 
x=abs(randi([1,10],n,1));
fh=zeros(iter,1);
tic
for i = 1:iter
    [f,g]=myfun(x);
    cvx_begin 
    variable t
    minimize myfun(x-t*g)
    subject to 
        t>=0
    cvx_end
    x=x-t*g;
    fh(i)=f;
    [f,i]
end
toc
