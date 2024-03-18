function plot_G(n)
 sum=0;
 S=[];
 for x=1:2^n
     sum=sum+1./x;
     S=[S,sum];
 end
 G=[];
 for x=1:n
     G=[G,S(2^x)];
 end
 X=1:n;
 f=polyfit(X,G,1);
 Gi=polyval(f,X);
 plot(X,Gi,'--',X,G);
 text(2,2,"Gi="+num2str(f(1))+"x+"+num2str(f(2)));
end

