clear all
clc
clf 
  
% zadani parametru kv. rce. 
% ------------------------- 
disp('Kvadraticka rovnice je tvaru ax^2+bx+c=0.') 
disp('-----------------------------------------') 
a=input('Zadejte koeficient a: '); 
b=input('Zadejte koeficient b: '); 
c=input('Zadejte koeficient c: '); 
fprintf('Bylo zadano: %3.1fx^2+%3.1fx+%3.1f=0 \n\n',a,b,c) 
  
D=b*b-4*a*c;
p=[a,b,c]; 
X= roots(p); 
disp('Postupem byly vypocteny koreny:'), disp(X) 
  
% vykresleni paraboly a korenu 
% ------------------------------------ 
x=sort(p); 
t=linspace(-2, 2); 
y=polyval(p,t);

figure("name", sprintf('Bylo zadano: %3.1fx^2+%3.1fx+%3.1f=0 \n\n',a,b,c))
hold on;
grid on;
plot(t,y), xlabel('x'), ylabel('y=p(x)') 

% nalezeni vrcholu paraboly 
dp=polyder(p); 
dy=polyval(dp,t); 

vrchol_x = roots(dp); 
vrchol_y = polyval(p,vrchol_x);

plot(t,dy,'g:',vrchol_x,vrchol_y,'k^');
     
if ( D >= 0 && length(x) == 2)
    % zobrazeni korenu 
    plot(x,[0,0],'r*') 
    legend('p(x)','roots','dp/dx','vrchol' ) 
else 
    legend('p(x)','dp/dx','vrchol' )  
end 
hold off