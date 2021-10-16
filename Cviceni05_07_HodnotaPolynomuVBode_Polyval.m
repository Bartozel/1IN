%p(x) = 2x^3 + 4x^2 - 6x
%najdete hodnoty v bodech zadane funkce
%pouzijte funkci polyval k vypoctu hodnot
clear; clc;
p=[2,4,-6,0];       % polynom se v matlabu definuje jako vektor koeficientů polynomu
 
polyval(p,0)        %hodnota v bode 0
polyval(p,2)        %hodnota v bode 2
polyval(p,[0 1 2])  %hodnota v boodech 0, 1, 2
 
x = (-3 : 0.1 : 2); 
y = polyval(p,x);   %hodnoty polynomu pro vsechny hodnoty vektoru x  
figure('Name',"polynom - 2x^3 + 4x^2 - 6x");
title("Polynom - 2x^3 + 4x^2 - 6x");
grid on;
xlabel('x');
ylabel('y=p(x)');

hold on;
plot(x, y, 'linewidth', 2);
plot(x, y, 'gd');
hold off;