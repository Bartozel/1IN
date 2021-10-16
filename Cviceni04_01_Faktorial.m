%prijmete uzivatelsky vstup, ktery bude cislo vetsi nez pet
%pokud uzivatel tuto podminku nesplni, vypiste mu informaci
%pokud ano faktorial spocitejte a uzivateli vypiste smyslulnou informaci

clc; clear;
n = input("Zadejte stupen faktorialu vyssi nez pet: ");
if(n<=5)
    disp("nesplnil jste podminku")
else

    fakt = 1;
    for i = (1:n)       
        fakt = fakt * i;
    end
    
    x = ['Honota faktorialu: ', num2str(fakt)];
    disp(x);
end
