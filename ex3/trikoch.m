function trikoch(k)
p=[0 2;sqrt(3) -1;-sqrt(3) -1;0 2];
n=3;
A=[cos(pi/3),-sin(pi/3);sin(pi/3),cos(pi/3)];

for s=1:k
    j=0;
    
    for i=1:n
        q1=p(i,:);
        q2=p(i+1,:);
        d=(q2-q1)/3;
        j=j+1;r(j,:)=q1;
        j=j+1;r(j,:)=q1+d;
        j=j+1;r(j,:)=q1+d+d*A';
        j=j+1;r(j,:)=q1+2*d;
    end
    n=4*n;
    clear p
    p=[r;q2];
end
figure
plot(p(:,1),p(:,2))
axis equal
end