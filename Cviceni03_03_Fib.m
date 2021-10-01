clear;
clc;

n = 10;
X = zeros(1,n);

a=0;
b=1;

X(1) = a;
X(2) = b;
for i = 3:n
    c = a+b;
    X(i) = c;
    a = b;
    b = c;
end
X