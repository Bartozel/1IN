% za me preferovane reseni pri vykreslovani, protoze ted staci
% abyste pridali jednu polozku do menu, vytvorili jednu funkci
% ktera vraci matici [x,y,z] a o zbytek vykresleni uz je postarano 
% automaticky
clear all;
clc;
clf;

from = -10;
to = 10;
steps = 60;

N = menu("Vyber typ grafu", "parabola", "sombrero");

if(N == 1)
   [x,y,z] = ParabolaF(from,to,steps);
else
   [x,y,z] = SombreroF(from,to,steps);
end

figure('Name','Measured Data');
subplot(1,2,1); 
mesh(x,y,z);
grid on
title('GRAF 3D - mesh');
xlabel('osa - x');
ylabel('osa - y'); 
zlabel('osa - z');

subplot(1,2,2); 
surf(x,y,z);
grid on
title('GRAF 3D - surf');
xlabel('osa - x');
ylabel('osa - y'); 
zlabel('osa - z');