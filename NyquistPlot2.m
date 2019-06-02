clc;
clear all;
close all;
k1=1.1;
k2=2.5;
n1=[k1 k1];
d=conv([1 0.5],[1 -2]);
sys1=tf(n1,d);
n2=[k2 k2];
sys2=tf(n2,d);
nyquist(sys1,sys2);
legend('sys1','sys2') % puts a legend on the current plot using the specified strings as labels

