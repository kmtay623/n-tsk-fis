% the central finite difference method
function deriv = grad_vec(b,delb,lambda)
xvec = b;
xvec1 = b;
for i = 1:length(b)
    xvec = b;
    xvec1 = b;
    xvec(i) = b(i) + delb;
    xvec1(i) = b(i) - delb;
    deriv(i) = (func1(xvec,lambda)-func1(xvec1,lambda))/(2*delb);
end

