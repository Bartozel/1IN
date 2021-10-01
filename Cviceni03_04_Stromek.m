%jako samostatna prace udelat, ze jsou k dispozici obe starny stromecku,
%nejen jeho prava cast
clear;
clc;

n = 10;
hold on
for i = 1:n
	x = [1:i];
	y = linspace(n-i,n-i,1);
	plot(x,y,'*');
end
hold off

%%Druha moznost zapisu
% n = 10;
% hold on;
% grid on;
% for i = 1:n
% 	x = (1:i);
% 	y = zeros(1,i);
%   y (1,:) = n-i;
% 	plot(x,y,'*');
% end
% hold off;