% Algorithm 1 used in Step 2.4 (Section IV-F)
% must key in information in fuzzymf.m and sse.m first

clear all
clc

tic

global ICONSTR RK 
RK=1;



n_of_iqcons = 1280; % number of monotonicity and boundary constraints (can be obtained from sse.m)
n_of_var=75; % number of fuzzy rules that is not fired by any input variable of a data set (can be obtained from "act_rule" in sse.m, not considering the fuzzy rules for ?^j (0,…,0)?0 and ?^j (1,…,1)?0)
	

k=1;
b0=[0.5*(ones(1,n_of_var))]; 
b_update=b0;
lambda_update = zeros(1,n_of_iqcons);
G_update=eye(length(b_update));
epsilon1 = 1e-7;% tolerance for terminating the algorithm
epsilon2 = 1e-6;% 
beta_l = 0;
beta_u = 1;
delb = 1e-3; % required for gradient computation
tau = 0.618;
D_update = func1(b_update,lambda_update);
deriv_update= grad_vec(b_update,delb,lambda_update);
search = -inv(G_update)*deriv_update';
counter=0;
converge=10000000;

while  converge>epsilon1 
b_old=b_update;
lambda_old=lambda_update;
beta_update = golden_funct1(b_old,search',beta_l,beta_u,tau,lambda_old,epsilon2);
b_update = b_old + beta_update*search';
lambda_update = lambda_old+ 2*RK*(max([ICONSTR; -lambda_old./(2)]));
D_old=D_update
D_update = func1(b_update,lambda_update);
converge=abs(D_update-D_old);
deltab = (beta_update*search');
deriv_old=deriv_update;
deriv_update = grad_vec(b_update,delb,lambda_update) ;% deriv -> gradient vector
deltaG = deriv_update-deriv_old; % deltag -> difference in gradient vector (over previous iteration)
term1 = (deltaG'*deltaG)/(deltaG*deltab');
term2 = ((deriv_old'*deriv_old)/(deriv_old*search));
G_old=G_update;
G_update = G_old+term1+term2;% A -> approximation of inverse of the hessian matrix
search=-inv(G_update)*deriv_update';% search -> search direction
counter=counter+1;

end
toc

max(ICONSTR)


 

