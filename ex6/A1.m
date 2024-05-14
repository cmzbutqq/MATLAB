function A1
A=[0.4,0.3;-0.325,1.2];
[pc,lambda] = eig(A);
[Y,I] = sort(diag(abs(lambda)),'descend');
temp = diag(lambda);
lambda = temp(I);
pc = pc(:,I) ;
vec=pc(:,1);
ratio=vec(2)/vec(1)
end