% Vygenerujte NAHODNY vektor. Hodnoty v rozsahu od jedne do deseti. Pouze
% cela cisla.
% Zvolte vhodny graf kterym znazornite kolikrat je urcite cislo ve vektoru
% zobrazeno
% Graf doplnte o popiseky os a celeho diagramu. 
% Zajistete vhodny rozsah grafu.

clear all; clc;
n = 25;
nahodneHodnoty = rand(1,n,'double') * 10; % nahodnyVektor = randi([0,9],1,10); pri pouziti randi neni potreba zaokrouhlovat
nahodnyVektor = round(nahodneHodnoty,0);

histogram(nahodnyVektor);
title('Nahodne rozdeleni hodnot ve vektoru');
xlabel("Hodnota");
ylabel("pocet vyskytu");
axis([0 10 0 10]);