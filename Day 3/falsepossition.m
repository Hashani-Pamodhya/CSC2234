function[root]=falsepossition(x0,x1,step,epes)
n=1
er=1
if (f(x0)*f(x1))<0
    while(n<=step && er>epes)
        if (f(x0)-f(x1))~=0
            x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
        end
            er=abs((x2-x1)/x2);
            if(f(x0)*f(x2))<0
                x1=x2;
            else
                x0=x2;
            end
            n=n+1;  
    end
    root=x2

else
    disp('warning')
end
end