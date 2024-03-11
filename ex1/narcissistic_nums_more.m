function res = narcissistic_nums_more(max,p)
% 列出1~max范围内满足"各位数字的p次方相加等于自身"的数字
% p=3,max=999时和narcissistic_nums()等价(但是多了个1)
% let n=max 复杂度O(nlogn)
    res=[];
    for x=1:max
        tmp=x;
        digits=[];
        while tmp
            digits=[digits mod(tmp,10)];
            tmp=floor(tmp/10);
        end
        if x==norm(digits.^p,1)
            res=[res x];
        end
    end
end

