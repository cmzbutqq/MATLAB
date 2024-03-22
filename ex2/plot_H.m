function plot_H(n)
 sum=0;
 S=[];
 for x=1:2*n
     sum=sum+1./x;
     S=[S,sum];
 end
 H=[];
 X=1:n;
 for x=X
     H=[H,S(2.*x)-S(x)];
 end
 Hi=linspace(log(2),log(2),n);
 plot(X,Hi,'--',X,H);
 legend('fitting','actual');
 text(n/5,log(2),"limit=ln2");
 title("H-n from 1 to "+ num2str(n)+" with fitting graph");
end

