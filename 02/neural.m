%% 
clear all
n = 4;
x = importdata('data_x.txt');
y = importdata('data_y.txt');
dim = length(y);
%%
cvx_begin
    variable wi(n)
    minimize( norm((1+exp((1+exp(-x)).^(-1)*wi)).^(-1) -y,2 ))
cvx_end

%%
wi = randn(10,1);
norm(sigmf([zeros(dim,8) sigmf([sigmf(x,[1 0]) zeros(dim,6)]*wi,[1 0]) zeros(dim,1)] * wi + [zeros(dim,9) sigmf([zeros(dim,4) sigmf(x,[1 0]) zeros(dim,2)]*wi,[1 0])] * wi,[1 0]) - y, 2 )

%%
wi = randn(10,1);
norm(sigmf(sigmf(sigmf(x,[1,0])*([eye(4) zeros(4,6)]*wi),[1,0])*([zeros(1,8) 1 0]*wi) + sigmf(sigmf(x,[1,0])*([zeros(4,4) eye(4) zeros(4,2)]*wi),[1,0])*([zeros(1,9) 1]*wi),[1,0])- y, 2 )

%%
wi = randn(4,1);
norm(sigmf(sigmf(x,[1,0])*wi,[1,0])-y,2)

%%
wi = randn(4,1);
norm((1+exp((1+exp(-x)).^(-1)*wi)).^(-1) -y,2 )
%%
