function res = narcissistic_nums()
    res=[];
    for x=100:999
        a=fix(x/100);
        b=mod(fix(x/10),10);
        c=mod(x,10);
        if x==a^3+b^3+c^3
            res=[res x];
        end
    end
end

