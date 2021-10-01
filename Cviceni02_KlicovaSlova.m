%%%%%%%% Prednaska 2
%Matice - indexy
 
%pripomenout linspace
 
a=[1,2,3; 4,5,6; 7,8,9];
a(1,:); %vypise prvni radek
a(1,[1,2]); %vypise prvni dva prvky z prvniho radku
a(:); %vytvori sloupcovi vektor ze vsech prvku v matici
a(:)'; %vytvori radkovy vektor ze vsech prvku v matici

b = 7;
b * [1,1,1]; %vytvori vektor tri sedmicek

c = [1,2,3,4; 5,6,7,8];
c(1,[1,2]) = 0; %nastavi prvni dva prvky, prvniho radku na 0
c(:,:) = 0; %nastavi prvky matice na nnulu

Prepis matice do radku
M=[1:4; 5:8];
M=[M M-5];
nebo
M = [M(1:8)]; %prepisuje po sloupcich

%Upravy s prazdnou matici
M=[1:4;5:8];
M(:,1)=[]; %odstrani prvni sloupec
M(1,:)=[];
M(:,(1:3))=[] ;

%specialni matice
zeros(3)
eye(3)
rand(3)
ones(3)

% maticove operace 
det() %determinant
inv() %inverzni matice
rank() % hodnota matice
max()
mean()
median()
sort()

any() %kontrola zda existuje nenulovy prvek
all()

v = 1:5;
diag(v) %vytvori matici a umisti vektor na diagonalu
diag(v,k) %v-vektor, k-pozice prvniho prvnku na prvnim radku, pocitano od nuly

%vytvoreni matice (5,5) prvky 1 : 25
A = zeros(5);
A(:) = linspace(1,25,25);
A = A'

% logicke operatory
 A = [1,0;0,1];
 B = [1,0;2,3];
 A&B; % AND a OR je |
 A>B;
%&& >= <= <> == ~=
 
%Priklad 1 Linearni rovnice
%  x1 +  x2 = 3
% -x1 + 2x2 = 5

A = [1,1;-1,2];
b = [3,5];
x = A\b;

%Priklad 2 Linearni rovnice
%  x1 -  x2 = 3
%  x1 + 2x2 = 5

A = [1,-1;1,2];
b = [3;5];
x = b'/A'
