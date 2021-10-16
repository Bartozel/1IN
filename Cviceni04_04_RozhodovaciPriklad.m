% - pomoci funkce menu zjistit zda by uzivatel chtel pocitat fibonaciho, nebo faktorial
% - zajistete uzivatelsky vstup, ktery musi byt vetsi nez pet
% - pokud je cislo mensi, zeptate se znova, maximalne trikrat
% - spocitate zvolenou funkci
% - zobrazite uzivateli smysluplnou informaci

clear; clc;

zvolenaFce = menu("Zvolte funkci","Fibonaci","Faktorial", "Jinou");
for  i =1:3
    vstup = input("Zadejte cislo vetsi nez 5");
    if(vstup > 5)
        break;
    end
end
vysledek = 1;
if(zvolenaFce == 1)
    vysledek = fibonacci(vstup);
elseif(zvolenaFce == 2)
    for i = 1:vstup
        vysledek = vysledek * i;
    end
else
    disp("je nam lito, tot nepodporujeme");
end

disp("vysledek je: " + vysledek)