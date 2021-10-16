clear all;
clc;
clf;

dx = linspace(-5, 5, 41); 
dy = dx; 
[x,y] = meshgrid(dx,dy);  
z = x.^2 + y.^2; 

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
