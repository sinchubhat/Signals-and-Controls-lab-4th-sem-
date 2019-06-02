clc;
clear all;
close all;
n1=[1 1];
d1=1;
g1=tf(n1,d1);
n2=[1 2];
d2=[1 3];
g2=tf(n2,d2);
fb1=feedback(g1,g2);
n3=[1 1];
d3=[1 6 8];
g3=tf(n3,d3);
n4=[1 0];
d4=1;
g4=tf(n4,d4);
s1=series(g3,g4);
s2=series(s1,fb1);
disp('Resultant transfer function is: ')
fb2=feedback(s2,1)
pzmap(fb2);
sgrid;
