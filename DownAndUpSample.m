clc;
clear;
close all;
x=input(' Enter the sequence x =') % x must be vector
y1=downsample(x,2)
y2=downsample(x,2,1)
z1=upsample(x,2)
z2=upsample(x,2,1)
subplot(2,2,1);
stem(y1);
subplot(2,2,2);
stem(y2);
subplot(2,2,3);
stem(z1);
subplot(2,2,4);
stem(z2);
