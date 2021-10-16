%Write  a  method  that  finds  how  many  times  certain  number  can  be 
%found in a given array. Write a program to test that the method works 
%correctly. 
clear all;
clc;
clf;

data = [1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,6,6,8];

cetnost = PocetCetnosti(data);


x = cetnost(:,1);
y = cetnost(:,2);

plot(x,y,'b-');
