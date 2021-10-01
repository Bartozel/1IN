function Manipulator2(n, L1, L2)
    alfa1 = linspace(0,pi,n); 
    alfa2 = linspace(-pi/2,3*pi/2,n);
    
    x(2,:) = L1*cos(alfa1);
    x(3,:) = L1*cos(alfa1) + L2*cos(alfa1+alfa2);
    x(1,:) = 0;
    
    y(2,:) = L1*sin(alfa1);
    y(3,:) = L1*sin(alfa1) + L2*sin(alfa1+alfa2);
    y(1,:) = 0;
    
    plot(x,y,x(3,:),y(3,:),'*');
    axis('equal');
    grid on
end

