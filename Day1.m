%matrix operations
A=[1,2,3;4,5,6;7,8,9];
B=A'
C=A.'
D=A*A'

%Square Root:
x = sqrt(16);

%Exponential
x = exp(1);

f=[1,1,1;1,1,1;1,1,1];
x=[1,1,1;1,1,1;1,1,1];
inv(A)
det(A)

%Logarithm
y = log(10);     
z = log10(100);

% sum of matrix
total=sum([1,2,3,4]);

% minor matrix 3*3 
H=[8,-6,2;-6,7,-4;2,-4,3];
H(2:3,[2:2,3:3])
H(2:3,[1:1,3:3])
H(2:3,[1:1,2:2])


%finding minor matrixes 4*4 matrix
I=[1,2,3,4;5,6,7,8;9,1,2,3;4,5,6,7];
I(2:3,[2:2,3:3,4:4])
I(2:3,[1:1,3:3,4:4])
I(2:3,[1:1,2:2,4:4])
I(2:3,[1:1,2:2,3:3])


% Sine, Cosine, Tangent
angle = pi / 4;
s = sin(angle);


%if 
x=5
if(X>0)
    disp('positive')
else
    disp('negative')
end


% for
for i=1:5
    disp(i)
end


%while
x=0
while(x<3)
    disp('positive')
    x=x+1
end


%User-defined Functions
function result = myFunction(x, y)
    result = x + y;  
end


n = size(A, 1) % no of raws in a matrix  / ans=3
m = size(A, 2) % no of columns in a matrix / ans=3


%finding determinant using manual way
function d=detm(A)  % d- return value,output name , A-matrix name ,detm - file function name
[n,m]=size(A); % m-colomn,n -raw
if n~=m
    error('matrix must be square');
end

if n==1
    d=A(1,1);
    return;
end

if n==2
    d=A(1,1)*A(2,2)-A(1,2)*A(2,1);
    return;
end

d=0;
for i=1:n
    m=A(2:n,[1:i-1,i+1:n]); % i mean raw
    d=d+(-1)^(1+i)*A(1,i)*detm(m);
end
disp(d); % ans =0









