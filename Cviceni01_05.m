%%zobrazte exponencialni fce e^x; e^2x; e^x/2

clear all; 
   close all;
   
   a=-10;                                   % dolni mez intervalu 
   b=1;                                     % horni mez intervalu 
   h=0.1;                                   % krok 
   
   x=[a:h:b]; 
   x=x';                                    %transpozice
   
   y1=exp(x); 
   y2=exp(2*x); 
   y3=exp(x/2); 
   
   plot(x,[y1 y2 y3]);                      % zobrazeni grafu, agregovaná osa y 
   grid     minor;                          % zobrazeni mrizky 
   axis([-1 1 0 8]);                        % nastaveni os grafu 
   xlabel('x'); 
   ylabel('f(x)');             % popis os 
   title('Exponencialni funkce');           % nadpis grafu 
   figure('name','Exponencialni funkce');   % nove okno pro grafiku 
   plot(x,y2,'o');                          % treti parametr je styl zobrazeni 
   hold on;                                 % pri novem kresleni se puvodni nevymaze 
   plot(x,y1);                              % treti parametr je styl zobrazeni 
   title('Exponencialni funkce');           % nadpis grafu 