function [f,g] = myfun(x)
global n m a b c;
f=c'*x-sum(log(b-a'*x));
if nargout > 1 % gradient required
    g =zeros(n,1);
    for i=1:n
        g(i)=c(i)+sum(a(i,:)'./(b-a'*x));
    end
end
%%
end
