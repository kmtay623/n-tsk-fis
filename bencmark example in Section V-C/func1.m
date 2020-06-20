% a function used to generate Eq. (9)

function y = func1(b,lambda)

global ICONSTR RK 
SS=load('sse1.mat');
A=struct2array(SS);

sk=load('sse2.mat');
k=struct2array(sk);

sk1=load('sse3.mat');
k1=struct2array(sk1);

fobj=[0 b 1]*A*[0 b 1]';
ICONSTR1=(k*[0 b]')';
ICONSTR2=(k1*[0 b]')'-1;
ICONSTR=[ICONSTR1,ICONSTR2];%constraint_matrix
y = fobj+ (sum(lambda.* max([ICONSTR; -lambda./(2*RK)])) + sum(RK*(max([ICONSTR; -lambda./(2*RK)])).^2));