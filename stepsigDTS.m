function[y,t]=stepsigDTS(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c are real numbers
t=a:0.1:b;
y=(t-c)>=0;
stem(t,y)

