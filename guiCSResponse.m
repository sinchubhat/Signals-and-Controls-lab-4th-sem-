clc;
clear all;
close all;
num=26;
den=[1 2 26];
sys=tf(num,den)
roots(den) % poles of the system
ltiview(sys) % graphical user interface