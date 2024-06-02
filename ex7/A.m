function A
y=[11.2 13.4 40.7 5.3 24.8 12.7 20.9 35.7 8.7 9.6 14.5 26.9 15.7 36.2 18.1 28.9 14.9 25.8 21.7 25.7]';
x1=[16.5 20.5 26.3 16.5 19.2 16.5 20.2 21.3 17.2 14.3 18.1 23.1 19.1 24.7 18.6 24.9 17.9 22.4 20.2 16.9]';
x2=[6.2 6.4 9.3 5.3 7.3 5.9 6.4 7.6 4.9 6.4 6.0 7.4 5.8 8.6 6.5 8.4 6.7 8.6 8.4 6.7]';
x3=[587 643 635 692 1248 643 1964 1531 713 749 7895 762 2793 741 625 854 716 921 595 3353]';

n=size(y,1); % 20
r1=corrcoef(y,x1);
r2=corrcoef(y,x2);
r3=corrcoef(y,x3);
disp(" ")
disp("r1~r3: "+r1(2,1)+" "+r2(2,1)+" "+r3(2,1)) % r1~r3: 0.83978 0.86412 -0.067098
disp("(1) choose x1,x2")
disp(" ")
x=[x1 x2 x3];

disp("(2) stepwise running...")
stepwise(x,y)
disp("(2) choose x1,x2")
disp("b: ")
X=[ones(n,1),x1,x2];
[b,bint,r,rint,stats]=regress(y,X);
disp(b)

disp("(3)")
plot(r,"+"),title("r,throw 8th and 20th")
disp("throw 2th and 19th")
disp("b: ")
x1=[x1(1:7);x1(9:19)];
x2=[x2(1:7);x2(9:19)];
y=[y(1:7);y(9:19)];
X=[ones(n-2,1),x1,x2];
[b,bint,r,rint,stats]=regress(y,X);
disp(b)
end