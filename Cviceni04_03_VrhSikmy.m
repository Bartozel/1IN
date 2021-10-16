% postupne vykreslete poloho hozeneho kamene pomoci rovnic sikmeho vrhu
% k urceni polohy pouzijte vhodny casovy krok
% pocatecni bod hodu je definovan v pocatku souradneho systemu
% pri poslednim kroku zobrazte v grafu i cas dopadu

% reseni je ukonceno pokud je poloha bodu pod urovni osy Y
% taky se da resit tak, ze si cas dopadu vypocitate predem a casovou
% diferenci urcite treba pomoci fce linspace

clc;
clear;

x_nula = 0;
y_nula = 0;
rychlost = input("zadejte rychlost");
cas = 0;
casovyKrok = 0.1;
g = 9.81;

pocitatVRadianech = menu("","Rad","Stupne");
switch pocitatVRadianech
    case 1
        uhel = input("Zadej uhel v radianech");
    case 2
        uhel = input("Zadej uhel ve stupnich");
end


figure("Name","Sikmy vrh");
hold on;
grid on;
axis('equal');
while 1
    if(pocitatVRadianech == 1)
        x = x_nula + rychlost*cas*cos(uhel);
        y = y_nula + rychlost*cas*sin(uhel) - 0.5*g*cas^2;
    elseif(pocitatVRadianech == 2)
        x = x_nula + rychlost*cas*cosd(uhel);
        y = y_nula + rychlost*cas*sind(uhel) - 0.5*g*cas^2;
    end
    
    if( y <0)
        title("doba trvani" + cas)
        plot(x,y,'go');
        break
    else
        plot(x,y,'go');
        pause(0.1);
        cas = cas + casovyKrok;
    end

end
hold off;
