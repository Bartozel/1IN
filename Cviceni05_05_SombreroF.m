function [x,y,z] = SombreroF(from,to,nOfSteps)

dx = linspace(from, to, nOfSteps); 
dy = dx; 
[x,y] = meshgrid(dx,dy); 
r = sqrt(x.^2 + y.^2); 
z = sin(r)./r; 
end

