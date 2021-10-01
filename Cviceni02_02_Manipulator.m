clear all; clc;

L1=1; 
L2=0.8; 
alfa1=(0:8:180) * pi/180; 
alfa2=(0:16:360) * pi/180; 


x= L1 * cos(alfa1); 
y= L1 * sin(alfa1);  
nuly = zeros(1,length(x));

x1 = x + L2*cos(alfa1+alfa2); 
y1 = y + L2*sin(alfa1+alfa2); 

figure('Name', 'Manipulator pomoci vektoru');
hold on
plot(0,0,'b+')
plot(x,y,'go'); 
plot([nuly;x],[nuly;y],'b-');

plot(x1,y1, 'r+')
plot([x;x1],[y;y1],'r-');
grid on
axis('equal')

hold off