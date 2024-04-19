function fitting(A)
SAMPLE_COUNT=10000;
choice=input("1.折线（原始图像\n2.拉格朗日插值\n3.最小二乘拟合\n*4.样条插值(spline函数)拟合\n选择：  ");
x=A(1,:);
y=A(2,:);
flag=size(A,1)==3;%是否有两组y值，第二组记作z
if flag
    z=A(3,:);
end
description="";
switch choice
    case 1
        description="折线";
        xi=x;
        yi=y;
        if flag
            zi=z;
        end
    case 2
        description="拉格朗日插值";
        xi=linspace(x(1),x(length(x)),SAMPLE_COUNT);
        l=length(x);
        M=ones(l,l);%范德蒙矩阵
        for i=1:l
            for j=2:l
                M(i,j)=x(i).^(j-1);
            end
        end
        a1=M\y';
        f1=flip(a1);
        yi=polyval(f1,xi);
        if flag
            a2=M\z';
            f2=flip(a2);
            zi=polyval(f2,xi);
        end
    case 3
        n=input("输入阶数");
        description=n+"阶最小二乘拟合";
        xi=linspace(x(1),x(length(x)),SAMPLE_COUNT);
        f=polyfit(x,y,n);
        yi=polyval(f,xi);
        if flag
            g=polyfit(x,z,n);
            zi=polyval(g,xi);
        end
    case 4
        description="样条插值(spline函数)拟合";
        xi=linspace(x(1),x(length(x)),SAMPLE_COUNT);
        yi=spline(x,y,xi);
        if flag
            zi=spline(x,z,xi);
        end
    otherwise
        disp("无效选择");
end
%画图部分
if flag
    poly = polyshape([xi flip(xi)],[yi flip(zi)]);
    hold on
    plot(poly);
    plot(x,y,'m.',x,z,'m.');
    hold off
    text(mean(x),mean([y z]),"AREA:"+area(poly),"HorizontalAlignment","center");%这里计算了面积
else
    plot(xi,yi,x,y,'m.');
end
title(description);
axis equal;
end

