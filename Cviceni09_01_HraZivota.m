% 1) Vygenerujte hrací plochu – čtvercovou matici o rozměrech NxN, kdy N > 10, naplňenou náhodně čísly 0 a 1
% 2) S využitím pomocné matice vygenerujte další iterační stav podle následujících pravidel
%     Pokud má políčko 1 právě dva nebo tři sousedy typu 1, nemeni se
%     Pokud má políčko 0 právě tři sousedy typu 1, zmeni se na 1
%     Pokud  není  splněna  ani  jedna  ze  dvou  předchozích  podmínek policko se meni na 0
% 3) Plochy vykreslete vedle sebe

while true
    velikostPole = input('zadejte velikost hraciho pole. Musi byt vetsi nez deset.');
    
    if velikostPole > 10
        break;
    end
end

puvodniMatice = round(rand(velikostPole));
novaMatice = puvodniMatice;
potrebnaSumaSousedu = 3;

for radek = 1 : velikostPole
    for sloupec = 1 : velikostPole
        if potrebnaSumaSousedu == PocetZivychSousedu(velikostPole, radek, sloupec, puvodniMatice)
            novaMatice(radek,sloupec) = 1;
        else
            novaMatice(radek,sloupec) = 0;
        end
    end
end

figure('Name','Hra zivota')
subplot(2,1,1);
h1 = heatmap(puvodniMatice);
h1.Title = "Puvodni Matice";

subplot(2,1,2);
h2 = heatmap(novaMatice);
h2.Title = 'Nova Matice';

function pocet = PocetZivychSousedu(velikostPole, radek, sloupec, puvodniMatice)
    
    sousedLevy = 0;
    if(sloupec > 1 && puvodniMatice(radek, sloupec - 1) == 1)
        sousedLevy = 1;
    end
    
    sousedPravy = 0;
    if(sloupec < velikostPole && puvodniMatice(radek, sloupec + 1) == 1)
        sousedPravy = 1;
    end
    
    sousedVrchni = 0;
    if(radek > 1 && puvodniMatice(radek - 1, sloupec) == 1)
        sousedVrchni = 1;
    end
    
    sousedDolni = 0;
    if(radek < velikostPole && puvodniMatice(radek + 1, sloupec) == 1)
        sousedDolni = 1;
    end
    
    pocet = sousedLevy + sousedPravy + sousedVrchni + sousedDolni;
end