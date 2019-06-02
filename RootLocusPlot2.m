clc;
close all;
clear all;
n=[1 2];
d1=conv([1 0],[1 1]) % To combine two factorized terms
d2=conv([1 3],[1 5])
d=conv(d1,d2)
sys=tf(n,d)
rlocus(sys)
