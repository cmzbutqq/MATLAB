function tree(k)
dtheta=pi/6;
get_next=@(root,l)[root(1)+l/3*sin(root(3)) root(2)+l/3*cos(root(3)) root(3)+dtheta;
    root(1)+l*2/3*sin(root(3)) root(2)+l*2/3*cos(root(3)) root(3)-dtheta];
plot_root=@(root,l)plot([root(1) root(1)+l*sin(root(3))],[root(2) root(2)+l*cos(root(3))]);

length=1;
scale=3;
figure
hold on

curr_roots=[0 0 0];%x,y,theta(y+ ==0)
next_roots=[];
plot_root(curr_roots(1,:),length);

for i=1:k
    for trav=1:size(curr_roots,1)
        root=curr_roots(trav,:);
        next_roots=[next_roots;get_next(root,length)];
    end
    length=length/scale;
    for trav=1:size(next_roots,1)
        plot_root(next_roots(trav,:),length);
    end
    curr_roots=[];
    curr_roots=next_roots;
    next_roots=[];
end
hold off
title("tree("+k+"); angle:"+dtheta*180/pi+"°; scale:"+scale)
axis equal
end