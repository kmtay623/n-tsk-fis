function y = trap_mf(x, params)

a = params(1) ;
b = params(2);
c = params(3) ;
d = params(4) ;
h = params(5);

I=[((x-a)/(b-a)),1,((d-x)/(d-c))];
q=min(I);

y=h*(max(q,0));
