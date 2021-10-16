%- Uživatel zadá celé číslo 0 < N < 11.
%- Pokud uživatel zadá N v jiném rozsahu, nebo se nebude jednat o celé číslo, bude vyzván k novému zadání.
%- Poté se vygeneruje pole F tak, že každý prvek svým indexem n(pořadovým číslem v poli) pro n=1,2,...,N, bude odpovídat hodnotě n!
%- Program zobrazí pole F.
%- Pro N = 4 -> 1, 2, 6, 24

%- Subplot 1 -> Program vykreslí hodnoty pole fPole do x-y grafu. K
%zobrazeni pouzijde kolecka

%- Subplot 2 -> Program vykreslí hodnoty pole fPole do x-y grafu, přičemž hodnoty prvků pole F 
% budou zobrazeny jako kolečka pokud fPole(n) < 121,  jinak vykreslí hodnoty jako diamanty.

%- Subplot 3 -> Program vykreslí hodnoty fPole do x-y grafu, přičemž hodnoty prvků fPole 
% budou zobrazeny jako kolečka pro lichá n a jako hvězdičky pro sudá n.

%- Subplot 4 -> Program vykreslí hodnoty fPole do grafu dle předchozího bodu,
% přičemž hodnoty osy y budou přepočteny do logaritmických souřadnic.

clc, clear all

while true
    N = input('Zadej cislo');
    if(N > 0 && N < 11 && N == round(N))
        break;
    end
end

fPole(1) = 1;
for i = 2:N
    fPole(i) = fPole(i-1) * i;
end
fPole

figure('Name','Measured Data');
subplot(4,1,1);
plot((1:N), fPole, 'o');

subplot(4,1,2);
hold on;
for n = 1:N
    if fPole(n) < 121
        plot(n,fPole(n),'bo');
    else
        plot(n,fPole(n),'bd');
    end
end
hold off;

subplot(4,1,3);
hold on;
for n = 1:N
    if n/2 ~= round(n/2)
        plot(n,fPole(n),'go');
    else
        plot(n,fPole(n),'g*');
    end
end
hold off;

subplot(4,1,4);
hold on;
for n = 1:N
    if n/2 ~= round(n/2)
        plot(n,log(fPole(n)),'go');
    else
        plot(n,log(fPole(n)),'g*');
    end
end
hold off;