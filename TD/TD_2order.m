function [x1,x2] = TD_2order(u)
T=0.001;
r=500;
h=0.01;
persistent x_1 x_2
if isempty(x_1)
    x_1=0;
end
if isempty(x_2)
    x_2=0;
end
x1k=x_1;
x2k=x_2;
x_1=x1k+T*x2k;
x_2=x2k+T*fst(x1k,x2k,u,r,h);
end