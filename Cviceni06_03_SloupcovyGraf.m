% vytvorte dynamicky pole,
% ktere prijima uzivatelsky vstup dokud uzivatel nezada hodnoty 10 nebo
% 0.125 i tuto hodnotu si ulozi
% z polynomu vykreslete sloupcovy graf a zobrazte aritmeticky prumer a
% median jeho hodnot
% graf popiste

clear all
clc
clf

N(1) = 1;
i = 1;
while(1)
    n = input("zadej cislo");
    N(i) = n;
    
    if(n == 0.125 || n == 10)
        break
    end
    i = i + 1;
end

valMean = mean(N);
valMedian = median(N);
velikostN = length(N);
x = [0,velikostN];

figure("Name","Zobrazeni")
hold on
bar(N);
plot(x,[valMean,valMean],'-g');
plot(x,[valMedian,valMedian],'-r');

legend("data",'mean','median')
hold off

save('dataTest')