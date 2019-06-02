% complex exponential with f=5 Hz
% script file
t=-4:0.1:4;
y=exp(j*2*pi*5*t);
subplot(2,1,1);
stem(t,abs(y));
subplot(2,1,2);
stem(t,angle(y));
% phase is in radians and with in + or - pi
