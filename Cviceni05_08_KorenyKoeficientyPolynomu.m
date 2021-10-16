%zadana funkce: p(x) = 2x^3 + 4x^2 - 6x
% funkce ROOTS vrátí hodnoty kořenů (při zadaných koeficientech) 
% funkce POLY  vrátí koeficienty polynomu (při zadaných kořenech)  
clear all;
clc;
clf;

disp("Koreny polynomu")
p=[2,4,-6,0]; 
R = roots(p)

disp("Koeficienty polynomu")
P = poly(R)

x = linspace(-3.5,1.5);  
y = polyval(p,x);  
figure('Name',"polynom - 2x^3 + 4x^2 - 6x")

plot(x, y, R, [0;0;0], 'rx'); 
grid on
legend('p(x)','roots');