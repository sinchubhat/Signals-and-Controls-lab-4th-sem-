% System with multiple feedback loops
clc;
clear all;
close all;
% ni is numerator of ith block
% di is denominator of ith block
n1=1; d1=1;
n2=1; d2=[1 1];
n3=1; d3=[1 2];
n4=1; d4=[1 3];
n5=4; d5=1;
n6=8; d6=1;
n7=12; d7=1;
nblocks=7;
blkbuild %block build
% how blocks are connected
% 1st column block number
% subsequent columns where the particular block take its input from

q = [ 1 0 0 0 0 %1 st block is not receiving input from any blocks,input is external
    2 1 -5 0 0 % 2nd block receives input (2 inputs)from output of 1st and 5th block which goes to a summing point -- output from 1st to + ,5th to -ve of summing point
    3 2 -6 0 0 % 3rd blocks - 2 inputs combined in summing block one from block 2 n one from 6 ,block 2 output connected to + of summing amplifier ,block 6 output to -ve of summing amplifier
    4 2 -6 3 -7 % 3 inputs
    5 3 0 0 0 % 1 input
    6 3 0 0 0 % 1 input
    7 4 0 0 0 ] %1 input
% number of rows in q = number of blocks
% number of columns in q (except 1st column) = max no of interconnections available in given system
% no entries marked with 0
input = 1; % input given to 1st block
output = 4; % output taken from block 4
[aa,bb,cc,dd]=connect(a,b,c,d,q,input,output) % to interconnect all system
% state space matrix of resultant matrix is calculated
[num,den]=ss2tf(aa,bb,cc,dd) % state space to transfer function
printsys(num,den)
