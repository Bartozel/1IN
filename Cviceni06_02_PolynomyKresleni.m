% vykreslete do jednoho okna tyto polynomy
% 6x + 1 = y
% 4x^2 + 4x -1 = y
% 2x^3 + 6x = y

clear;
clc;
clf;

p1 = [0, 0, 6, 1];
p2 = [0, 4, 4, -1];
p3 = [2, 0, 6, 0];

p = [p1;p2;p3];

x = linspace(-2,2,25);

for i = 1:3
    y = polyval(p(i,:),x);
    yf(i,:) = y;
end

subplot(3,1,1);
plot(x,yf(1,:));
title("Subplot 1: 6x + 1 = y");

subplot(3,1,2);
plot(x,yf(2,:));
title("Subplot 2: 4x^2 + 4x -1 = y");

subplot(3,1,3);
plot(x,yf(3,:));
title("Subplot 3: 2x^3 + 6x = y");