% two systems connected in series (Cascaded system)
clc;
clear all;
close all;
num=[1 1];
den=[500 0 0];
num1=[1 1];
den1=[1 2];
[num2,den2]=series(num,den,num1,den1);
printsys(num2,den2)
