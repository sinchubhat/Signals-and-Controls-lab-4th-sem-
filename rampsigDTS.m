function[y,t]=rampsigDTS(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which ramp exists
% a,b,c are real numbers
t=a:0.1:b;
y=(((t-c)>=0).*(t-c));
stem(t,y)
