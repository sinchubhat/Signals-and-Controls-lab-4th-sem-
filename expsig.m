function[y,t]=expsig(a,b,c)
% b and c are the lower and upper time limit
% a is a constant
t=b:0.01:c;
y=exp(a*t);
plot(t,y)

