clc;
clear all;
close all;
n1=10;
d1=[1 1 0];
g1=tf(n1,d1);
n2=[0.5 0];
d2=1;
g2=tf(n2,d2);
fb1=feedback(g1,g2);
n3=[1 2];
d3=1;
g3=tf(n3,d3);
s1=series(g3,fb1);
n4=2;
d4=1;
g4=tf(n4,d4);
n5=1;
d5=[1 2];
g5=tf(n5,d5);
s2=series(g4,g5);
fb2=feedback(s1,1);
s3=parallel(s2,1);
disp(' Resultant transfer function is: ');
res=series(s3,fb2)
pzmap(res);
sgrid;

