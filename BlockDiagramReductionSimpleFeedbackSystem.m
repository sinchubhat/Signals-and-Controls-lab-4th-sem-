% Simple feedback system
clc;
clear all;
close all;
num1 = [1 1];
den1 = [500 0 0];
num2=[1 1];
den2=[1 2];
[num,den]=feedback(num1,den1,num2,den2,-1); % negative feedback
% positive feedback +1
printsys(num,den)