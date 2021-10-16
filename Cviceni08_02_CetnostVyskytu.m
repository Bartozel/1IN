function cetnosti = Cviceni08_02_CetnostVyskytu(data)
    cetnosti = [0,0];

    for i = 1:length(data)
        
        key = data(i);
                    
        if (i ~= 1)
            used = IsUsed(key,cetnosti(:,1));
        else
            used = 0;
        end
        
        if(used == 0)
            prvniSloupec = cetnosti(:,1);
            rowNumber = length(prvniSloupec);
            if(i>1)
                rowNumber = rowNumber + 1;
            end
            
            cetnosti(rowNumber,1) = key;
            cetnosti(rowNumber,2) = KeySum(key,data);
        end
    end
end

function t = IsUsed(key,data1)

    for i = 1:length(data1)
        if data1(i) == key
           t = true;
           return
        end
    end
    t = false;
end

function t = KeySum(key,data2)
t = 0;
    for i = 1:length(data2)
        if data2(i) == key
           t = t+1;
        end
    end
end
