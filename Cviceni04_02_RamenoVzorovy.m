% vykresli ramena manipulatoru
% trajektorie konecnych bodu ramen L1 a L2

clear; 
clc; 
disp('manipulator');
n=50;

L1=input('zadej delku ramene 1:'); 
if isempty(L1)
 L1=1.0; 
end 

L2=input('zadej delku ramene 2:'); 
if isempty(L2) 
    L2=0.8; 
end 

[alfa1]=input('zadej mezni hodnoty uhlu ve st. pro kloub 1, [min, max]='); 
if isempty(alfa1) || alfa1(1) > alfa1(2)
 alfa1=[0,180];
end 

[alfa2]=input('zadej mezni hodnoty uhlu ve st. pro kloub 2, [min, max]='); 
if isempty(alfa2) || alfa2(1) > alfa2(2)
    alfa2=[0,90]; 
end 
 
alfa=[
        linspace(alfa1(1),alfa1(2),n)*pi/180 ; 
        linspace(alfa2(1),alfa2(2),n)*pi/180
    ]; 
 
x=zeros(3,n); 
y=zeros(3,n); 
x(2,:)=L1*cos(alfa(1,:)); 
y(2,:)=L1*sin(alfa(1,:)); 
x(3,:)=L1*cos(alfa(1,:)) + L2*cos(alfa(1,:) + alfa(2,:)); 
y(3,:)=L1*sin(alfa(1,:)) + L2*sin(alfa(1,:) + alfa(2,:)); 
  
% rozsireni: simulace fazi polohy ramene manipulatoru 
figure('Name',"Manipulator");
axis('equal');
title('manipulator'), xlabel('x'), ylabel('y');
for i=1:n               %pocet kroku urcen na pocatku prikladu
    clf;                %pri kazde iteraci je potreba obrazek smazat
    grid on;            %chceme grid pri kazdem vykresleni grafu

    hold on;            %prikaz hold pouzivame pokud do grafu vykreslujeme vice prikazu plot. 
                        % Pro lepsi pochopeni zkuste zakomentovat. I s prikazem hold off radek 65

    %Vykresleni trajektorii - pokud by nebyly zobrazeny, melo by vyznam
    %zmenit paramtry v axis
    plot(x(2,:),y(2,:),x(3,:),y(3,:)); 
    
    %Vykresli aktualni polohu ramene
    plot([x(1,i),x(2,i),x(3,i)],[y(1,i),y(2,i),y(3,i)],'g', 'linewidth',2);
    
    %Vykresli koncove body
    plot(0,0,'ko','linewidth',5);
    plot(x(2,i),y(2,i),'k.');
    plot(x(3,i),y(3,i),'kd');

    hold off;
    pause(0.1);
end 