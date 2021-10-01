clear all;
clc;

n = 25;
N = randi([0,99],1,n);
N
condition = true;

while condition
    condition = false;
    for i = 1:n-1
        if N(i) > N(i+1)
            a = N(i);
            b = N(i+1);
            N(i) = b;
            N(i+1) = a;
            condition = true;
        end
    end 
end

N