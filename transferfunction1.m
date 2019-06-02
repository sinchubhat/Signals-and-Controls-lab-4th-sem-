clc;
clear all;
close all;
disp('Controller')  % Display enclosed text
n1=[1 2];
d1=[1 3];
G1=tf(n1,d1)
display('plant')
n2=[1 1];
d2=[1 6 8];
G2=tf(n2,d2)
display('Resultant transfer function')
GS=series(G1,G2) % cascade connection of G1 and G2
