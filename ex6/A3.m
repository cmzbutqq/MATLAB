function A3
data=[];
for p=linspace(0,8/15,20)% p should be less than 8/15,else lambda is not real num(delta==.64+1.2q)
A=[0.4,0.3;-p,1.2]; 
[~,lambda] = eig(A);
[~,I] = sort(diag(abs(lambda)),'descend'); 
temp = diag(lambda);
lambda = temp(I);
data=[data;p,lambda'];
end
real(data)
% find that when p is about 0.4, one of the two lambdas is near 1

p=.4;
A=[0.4,0.3;-p,1.2]; 
[pc,lambda] = eig(A);
[~,I] = sort(diag(abs(lambda)),'descend'); 
pc = pc(:,I) ;
vec=pc(:,1);
ratio=vec(2)/vec(1)
A_draw(p);
end