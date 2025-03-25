function[root]=fixedpoint(x0,steps,epes)
xr=x0;
n=1;
er=1;

while(n<=steps && er>epes)
    xr_old=xr;
    xr=g(xr_old);
    if xr ~= 0
        er=abs((xr-xr_old)/xr); %abs-absolute values xr-new root
    end
    n=n+1;
    error(n)=er; % error is an array size n ,error(1,2)=()
    stp(n)=n;
end
plot(stp,error);
 root=xr;
 xlabel('stp');
 ylabel('error');
end
