function q7()
encrypted='OJWPISWAZUXAUUISEABAUCRSIPLBHAAMMLPJJOTENH';
encode=@(c)abs(c)-abs('A')+1;% char->int,'a'->1,'b'->2...
decode=@(i)char(i+abs('A')-1);% int->char, inverse of encode

sec_vec=encode('UCRS');%secret
sec_mat=reshape(sec_vec,[2,2]);
org_vec=encode('TACO');%original
org_mat=reshape(org_vec,[2,2]);

% A * org_mat = sec_mat, org_mat = invA * sec_mat, invA = org_mat * sec_mat ^ -1
invA=org_mat/sec_mat;

% decode(invA*sec_mat); %  2x2 char 数组'TC'\n'AO'

vec=encode(encrypted);
res='';
for loop=1:21
    s_mat=reshape(vec(2*loop-1:2*loop),[2,1]);
    o_mat=round(invA*s_mat);
    str=decode(reshape(o_mat,[1,2]));
    res=[res str];
end
res
end