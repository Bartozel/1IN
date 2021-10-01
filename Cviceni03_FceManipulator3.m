function Manipulator3(n, L1, L2)
    alfa_1 = linspace(0,pi,n); 
    alfa_2 = linspace(-pi/2,3*pi/2,n); 
    x(2,:) = L1*cos(alfa_1); 
    y(2,:) = L1*sin(alfa_1); 
    x(3,:) = L1*cos(alfa_1) + L2*cos(alfa_1+alfa_2); 
    y(3,:) = L1*sin(alfa_1) + L2*sin(alfa_1+alfa_2); 
    x(1,:) = 0; 
    y(1,:) = 0;
    
    axis([-1.5,2,-1,2]); 
    grid('on'); 
    hold on; 
    
    for i = 1:n 
        plot(x(:,i),y(:,i),'-b'); 
        plot(x(3,i),y(3,i),'*k'); 
        pause(0.1); 
    end 
    hold off;
end

