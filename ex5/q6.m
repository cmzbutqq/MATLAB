function q6()

%字符串->向量->矩阵
disp('原始数据:')
str='Mr Hill made this code.'
vec=abs(str);
sz=ceil(sqrt(length(vec)));
ex_vec=[vec zeros(1,sz^2-length(vec))];
mat=reshape(ex_vec,[sz,sz])


A = gallery('dramadah',sz);% 一个典型的加密密钥，其逆矩阵也是整数矩阵
%行列式为 1 或 –1 的整数方阵也称为幺模矩阵。gallery('dramadah',n) 就是这样一种矩阵

A=randi(20,sz);
while det(A)==0
    A=randi(20,sz);% 随机生成的加密密钥，加密后一般能转为unicode字符串
end

disp('加密后:')
en_mat=A*mat;
en_vec=reshape(en_mat,[1,sz^2]);
en_str=char(en_vec)
disp('解密后:')
de_mat=round(A\en_mat);
de_vec=reshape(de_mat,[1,sz^2]);
de_str=char(de_vec)
end