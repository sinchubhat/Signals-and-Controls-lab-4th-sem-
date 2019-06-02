function[y,t]=stepsig(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c are real numbers
t=a:0.01:b;
y=(t-c)>=0;
plot(t,y)
