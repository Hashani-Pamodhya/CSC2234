function[root]=bisection(xl,xu,step,epes) % step=10
n=1; % n is iterartion =10
er=1; %error
xr=0; %root

if f(xl)*f(xu)<0
    while (n<=step && er>epes)
        xm_old=xr;
        xr=(xl+xu)/2;

        if f(xl)*f(xr)<0
            xu=xr;
        else
            xl=xr;
        end
        er=abs((xr-xr_old)/xr);
        n=n+1;
    end
    root=xr;
else
    disp('there is no root in this intervel');
end
end
