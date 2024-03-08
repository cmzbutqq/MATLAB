x=linspace(-5,5,1000);
subplot(2,2,1),plot(x,exp(-x.^2)),title("概率曲线"),xlim([-2,2]);
subplot(2,2,2),plot(x,sin(x)),title("正弦曲线");

t=linspace(-100,100,10000);
subplot(2,2,3),plot((3*t)./(1+t.^3),(3*t.^2)./(1+t.^3)),title("叶形线"),xlim([-2,2]),ylim([-2,2]);

theta=linspace(-2*pi,2*pi,1000);
subplot(2,2,4),polarplot(theta,sin(2.*theta)),title("四叶玫瑰曲线");
