clear all; clc;

n = 25;
L1 = 1;
L2 = 0.8;
alfa1 = linspace(0,pi,n); 
alfa2 = linspace(0, 2*pi ,n);

x(1,n) = 0;
x(2,:) = L1*cos(alfa1);
x(3,:) = L1*cos(alfa1) + L2*cos(alfa1+alfa2);

y(2,:) = L1*sin(alfa1);
y(3,:) = L1*sin(alfa1) + L2*sin(alfa1+alfa2);
y(1,:) = 0;

figure('Name','Manipulator pomoci matice')
plot(x,y,x(3,:),y(3,:),'*');
axis('equal');

grid on