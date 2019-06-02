function[y,n]=uofnminus1()
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c must be integers for discrete signals
n=-5:7;  %n=a:b;
y=(n-1)>=0; %y=(n-c)>=0;
stem(n,y)
