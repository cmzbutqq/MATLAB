function res = narcissistic_nums_more(max,p)
% �г�1~max��Χ������"��λ���ֵ�p�η���ӵ�������"������
% p=3,max=999ʱ��narcissistic_nums()�ȼ�(���Ƕ��˸�1)
% let n=max ���Ӷ�O(nlogn)
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

