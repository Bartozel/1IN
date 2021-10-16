function t = Cviceni08_01_Fibo(x)

    if x == 1 || x == 2
        t = 1;
    else
        t = fibo(x-1) + fibo(x-2);
    end
end