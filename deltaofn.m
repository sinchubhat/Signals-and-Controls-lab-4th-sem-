function[y,n]=deltaofn()
% a and b are the lower and upper time limit
% c is the instant at which impulse exists
% a,b,c must be integers for discrete signals
n=-5:5; % n=a:b;
y=(n-0)==0; % y=(n-c)==0
stem(n,y)
% c=0 for delta(n)
