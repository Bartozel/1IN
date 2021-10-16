clear all;
clc;
clf;

t=linspace(0,10*pi,1E3); % chceme 5 závitů o průměru 2mm a stoupání 1mm 
r=1; 
b=1/(2*pi); 

z=b*t;   
x=r*cos(t); 
y=r*sin(t); 

figure('Name','Measured Data');
subplot(1,2,1); 
plot3(x,y,z);
grid on
title('GRAF 3D');
xlabel('osa - x');
ylabel('osa - y'); 
zlabel('osa - z');
 
subplot(1,2,2);
plot3(x.*z,y.*z,z);
grid on;
title('GRAF 3D');
xlabel('osa - x');
ylabel('osa - y');
zlabel('osa - z') ;