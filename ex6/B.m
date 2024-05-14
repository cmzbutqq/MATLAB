function B
A=[1,.5,0;0,.5,1;0,0,0];
[pc,lambda] = eig(A)
% found that only one lambda is >=1(actually==1),
% corresponding eigen vector==[1;0;0],means that eventually every crop will be AA

dist=[.8;.2;0];
A^20*dist

end