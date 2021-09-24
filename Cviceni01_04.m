% zobrazte a popiste zavislost amplitudy harmonickeho kyvadla na case

t=0:0.01:0.5; 
T=0.4; 
f=1/T; 
A=2; 
fi=pi/2; 
 
y=A*sin(2*pi*f*t+fi); 
plot(t,y,'o')
grid on
title('graf sin(x)')
xlabel('time')
ylabel('A')