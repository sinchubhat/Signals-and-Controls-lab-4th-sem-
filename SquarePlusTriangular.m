clc;
clear all;
close all;
t1=0:0.001:0.3;
y1=square(2*pi*10*t1,50);
%subplot(2,2,1);
plot(t1,y1);
t2=0.3:0.001:0.6;
y2=sawtooth(2*pi*10*t2,0.5);
%subplot(2,2,2);
plot(t2,y2);
%t=0:0.001:0.6;
%y=plus(y1,y2);
%subplot(2,2,3);
plot(t1,y1,t2,y2);