function fitting(A)
%choice=input("1.折线（啥也不做\n2.拉格朗日插值\n3.最小二乘拟合\n*4.傅里叶级数拟合\n选择：  ");
choice=1;
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
        if flag
            xi=x;
            yi=y;
            zi=z;
        else
            xi=x;
            yi=y;
        end
    case 2
        n=input("输入阶数");
        if flag
            
        else
            
        end
    case 3
        n=input("输入阶数");
        if flag
            
        else
            
        end
    case 4
        if flag
            
        else
            
        end
    otherwise
        disp("无效选择");
end
%画图部分
if flag
    poly = polyshape([xi flip(xi)],[yi flip(zi)]);
    plot(poly);
    text(mean(x),mean([y z]),"AREA:"+area(poly),"HorizontalAlignment","center");%这里计算了面积
else
    plot(x,y);
end
title(description);
axis equal;
end

