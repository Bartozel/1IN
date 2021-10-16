%zadana funkce: p(x) = 2x^3 + 4x^2 - 6x
%najdete hodnoty v bodech zadane funkce
%pouzijte zadanou funkci k vypoctu hodnot
clear;
clc;

p = [2,4,-6,0]; % polynom se v matlabu definuje jako vektor koeficientů polynomu

x=0;
p(1)*x^3 + p(2)*x^2 + p(3)*x + p(4) %hodnota v bode 0

x=2;
p(1)*x^3 + p(2)*x^2 + p(3)*x + p(4) %hodnota v bode 2

x=[0,1,2];
p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4) %hodnota v bodech 0, 1, 2

x=[-3:0.1:2]; 
y=p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4); %hodnoty polynomu pro vsechny hodnoty vektoru x  

figure('Name',"polynom - 2x^3 + 4x^2 - 6x");
title("Polynom - 2x^3 + 4x^2 - 6x");
grid on;
xlabel('x');
ylabel('y=p(x)');

hold on;
plot(x, y, 'linewidth', 2);
plot(x, y, 'gd');
hold off;