%% tento m-script slouzi jako rozcestnik k volani jiz nami vytvorenych manipulatoru. 
%% Kod ve funkcich je bez uprav mozne volat samostatne. Nutne ale kod 
%% z fci vykopirovat do noveho m-scriptu a definovat v nem chybejici hodnoty, jako rameno_L1, rameno_L2, pocetKroku

clear;
clc; 

model = 1;
pocetKroku = 25;
rameno_L1 = 1.3; 
rameno_L2 = 0.7; 

if(model == 1)
    Cviceni03_FceManipulator1(rameno_L1, rameno_L2);
elseif (model == 2)
    Cviceni03_FceManipulator2(pocetKroku,rameno_L1, rameno_L2);
elseif (model == 3)
    Cviceni03_FceManipulator3(pocetKroku,rameno_L1, rameno_L2);
elseif (model == 4)
    Cviceni03_FceManipulator4(pocetKroku,rameno_L1, rameno_L2);
else
    disp('Tento typ neznam');
end
