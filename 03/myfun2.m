function [s] = myfun2(t)
global x g
s=myfun(x-t*g);
end