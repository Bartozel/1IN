function [x,y,z] = ParabolaF(from,to,nOfSteps)
    dx = linspace(from, to, nOfSteps); 
    dy = dx; 
    [x,y] = meshgrid(dx,dy);  
    z = x.^2 + y.^2; 
end

