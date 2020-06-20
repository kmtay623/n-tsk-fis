% GSS method
function beta1 = golden_funct1(b,search,beta_l,beta_u,tau,lambda,epsilon2)
beta1 = beta_l*tau + beta_u*(1-tau);
beta2 = beta_l*(1-tau) + beta_u*tau;
P1 = func1(b+beta1*search,lambda);
P2 = func1(b+beta2*search,lambda);

while abs(func1(b+beta1*search,lambda)-func1(b+beta2*search,lambda))>epsilon2
    if P1 > P2
        beta_l = beta1;
        beta1 = beta2;
        P1 = P2;
        beta2 = (1-tau)*beta_l + tau*beta_u;
        P2 = func1(b+beta2*search,lambda);
    else
        beta_u = beta2;
        beta2 = beta1;
        P2 = P1;
        beta1 = (1-tau)*beta_u + tau*beta_l;
        P1 = func1(b+beta1*search,lambda);
    end
end
end


