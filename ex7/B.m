function B
y1=[22.1 15.4 11.7 10.3 11.4 7.5 13.0 12.8 14.6 18.9 19.3 30.1 28.2 25.6 37.5 36.1 39.8 44.3]';
y2=[7.2 5.4 7.6 2.5 2.4 1.7 4.3 3.7 3.9 7.0 6.8 10.1 9.4 7.9 14.1 14.5 14.9 15.6]';
x1=[1.89 1.94 1.95 1.82 1.85 1.78 1.76 1.76 1.75 1.74 1.70 1.70 1.68 1.60 1.61 1.64 1.67 1.68]';
x2=[6.1 6.2 6.3 8.2 9.8 10.3 10.5 8.7 7.4 6.9 5.2 4.9 4.3 3.7 3.6 3.1 1.8 2.3]';

n=size(y1,1); % 18
x=[x1 x2];
X=[ones(n,1) x];
disp("(1)")
disp("y1:")
disp(" ")
[b,bint,r,rint,stats]=regress(y1,X,.05);
disp("b & bint: ")
disp(" ")
disp(b)
disp(bint)
disp("R²: "+stats(1,1)+" F: "+stats(1,2)+" s²: "+stats(1,4))

disp("y2:")
disp(" ")
[b,bint,r,rint,stats]=regress(y2,X,.05);
disp("b & bint: ")
disp(" ")
disp(b)
disp(bint)
disp("R²: "+stats(1,1)+" F: "+stats(1,2)+" s²: "+stats(1,4))
disp(" ")

disp("(2)")
disp("y1: x3 = 0, y2: x3 = 1")
X1=[X zeros(n,1)];
X2=[X ones(n,1)];
y=[y1;y2];
[b,bint,r,rint,stats]=regress(y,[X1;X2],.05);
disp("b & bint: ")
disp(" ")
disp(b)
disp(bint)
disp("R²: "+stats(1,1)+" F: "+stats(1,2)+" s²: "+stats(1,4))

disp("(3)")
subplot(1,2,1),scatter([x1;x1],r)
subplot(1,2,2),scatter([x2;x2],r)
disp("different plots, consider interaction")

disp("(4)")
X=[X x2.^2 x1.^2 x1.*x2];
X1=[X zeros(n,1) zeros(n,1) zeros(n,1)];
X2=[X ones(n,1) x1 x2];
y=[y1;y2];
[b,bint,r,rint,stats]=regress(y,[X1;X2],.05);
disp("b & bint: ")
disp(" ")
disp(b)
disp(bint)
disp("R²: "+stats(1,1)+" F: "+stats(1,2)+" s²: "+stats(1,4))