clear all;
clc;
clf;

dx = linspace(-8, 8, 50); 
dy = dx; 
[x,y] = meshgrid(dx,dy); 
r = sqrt(x.^2 + y.^2); 
z = sin(r)./r; 

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