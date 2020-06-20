% Eq. (10)
% all data points, o=10 are considered as training data 
function fx = func(w,l,u,ideal1)

for i=1:1:10
fx=sum((((w*l(i))+((1-w)*u(i)))-ideal1(i)).^2);
end