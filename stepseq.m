function[y,n]=stepseq(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c must be integers for discrete signals
n=a:b;
y=(n-c)>=0;
stem(n,y)
