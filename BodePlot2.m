clc;
close all;
clear all;
n1=[200,600];
d1=conv([1 2 0],[1 4 60])
OLSYS=tf(n1,d1)
[n2,d2]=feedback(n1,d1,1,1);
CLSYS=tf(n2,d2)
p=roots(d2) % poles of the system
pzmap(CLSYS); % plot of poles and zeros
figure;
bode(OLSYS,[0.1,100]);
grid;
[GM,PM,wcg,wcp]=margin(OLSYS)
GM_dB=20*log10(GM)
