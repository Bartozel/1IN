% zobrazte aproximaci funkce x^2 - x = y
% - zvolte interval definicniho oboru
% - zajistete aby hodnoty oboru hodnot byly
clear; 
clc;
clf;
  
% definicni obor 
x_min = -2; 
x_max = 2;
n = 50; 
x = linspace(x_min, x_max,n); 

funkceP = [1,-1,0];

figure("Name","aproximovany polynom");
hold on;
grid on;

%presne vykresleni funkce
oborHodnot = polyval(funkceP, x);
plot(x, oborHodnot, 'b-');

% aproximace dat polynomem druheho stupne
priblizneHodnotyY = oborHodnot + rand(1, n); %vytvoreni pribliznych dat
aproximovaneP = polyfit(x, priblizneHodnotyY, 2); 
yf = polyval(aproximovaneP, x); 
plot(x, yf, 'go', x, yf, 'g-') 
  
% vypocet chyby aproximace 
ya = polyval(aproximovaneP, x); 
sse = sum((priblizneHodnotyY - ya).^2); 
disp('Chyba aproximace je:') 
disp(sse) 
  
% nalezeni extremu polynomu P, ver. 1 
dP = polyder(funkceP);
plot([x_min, x_max], [polyval(dP,x_min), polyval(dP,x_max)], 'r-'); 
  
% nalezeni extremu polynomu P, ver. 2 
koreny = roots(funkceP);
extremX = (koreny(1) + koreny(2))/ 2;
extremY = polyval(funkceP,extremX);
plot(extremX,extremY,'r*'); 
  
% popisek 
xlabel('x');
ylabel('y');
legend( ...
        'funkce x^2 - x = y', ...
        'aproximace funkce x^2 - x = y', ...
        'derivace funkce P 2x - 1 = y', ...
        'extrem' ...
    );
title('aproximace dat');
hold off