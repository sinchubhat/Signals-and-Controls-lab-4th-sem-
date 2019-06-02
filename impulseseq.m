function[y,n]=impulseseq(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which impulse exists
% a,b,c must be integers for discrete signals
n=a:b;
y=(n-c)==0;
stem(n,y)
% save this as impulseseq.m 
% dont run the program 
% run in command window by calling the function as impulseseq(a,b,c) give
% values of a,b,c in function call
% example :    impulseseq(1,5,4)