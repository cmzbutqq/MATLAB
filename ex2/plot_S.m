function plot_S(n)
 sum=0;
 S=[];
 Si=[];
 X=1:n;
 r=0.5772156649;
 for x=X
     sum=sum+1./x;
     S=[S,sum];
     Si=[Si,log(x)+r];
 end
     plot (X,Si,'--',X,S);
     legend('fitting','actual');
     text(n/4,log(n/4)+0.5,"Si=ln x + 0.58");
     title("S-n from 1 to "+ num2str(n)+" with fitting graph");
end

