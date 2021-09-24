% Graficky znázorněte průběh funkce: 
% - y = (3sin(a)cos(a))/(sin3(a)+cos3(a))
% - x = <0;  Pi/2> s krokem  Pi/100 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%x = [0:pi/100:pi*2];
x = [-30 : 0.5 : 30];
y1 = 3 * (sin(x).*cos(x));
y2 = x .* (sin(3)+cos(3));
y = y1 ./ y2;

plot(x,y);