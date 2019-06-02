clc;
close all;
clear all;
n=5;
d=conv([1 2 0],[1 2 10]);
sys=tf(n,d)
bode(sys); % To draw the bode plot
grid;
figure;
margin(sys) % To view Bode plot as well as gain margin and phase margin
[Gm,Pm,wcg,wcp]=margin(sys);
% computes the gain margin Gm,the phase margin Pm,and the associated
% frequencies wcg and wcp without Bode plot
GM_dB=20*log10(Gm)
display(Pm);
display(wcg);
display(wcp);