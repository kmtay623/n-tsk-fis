% The GSS method has been employed to search for an optimal w as in Eq.(10), by minimizing SSE(b^(j,d') ) 

clear all
clc

% obtained from Eq. (3) with the fuzzy rules, i.e., "b_lower'" obtained
% from mifis.m

l=[ 0.7006
    0.6002
    0.6004
    0.7986
    0.7999
    0.3000
    0.1000
    0.4000
    0.3000
    0.5001];

% obtained from Eq. (3) with the fuzzy rules, i.e., "b_upper'" obtained
% from mifis.m
u=[   0.7006
    0.6002
    0.6004
    0.7986
    0.7999
    0.3000
    0.1000
    0.4000
    0.3000
    0.5001];

% a subjective overall rate (y^k) obtained from Table VI (Section V-D)
ideal1=[0.7000
    0.6000
    0.6000
    0.8000
    0.8000
    0.3000
    0.1000
    0.4000
    0.3000
    0.5000];


beta_l=0;
beta_u=1;
epsilon = 1e-6;
tau = 2/(1+sqrt(5));
beta1 = beta_l*tau + beta_u*(1-tau);
beta2 = beta_l*(1-tau) + beta_u*tau;
P1 = func(beta1,l,u,ideal1);
P2 = func(beta2,l,u,ideal1);
k=1;
while abs(func(beta1,l,u,ideal1)-func(beta2,l,u,ideal1))>=epsilon
    if P1 > P2
        beta_l = beta1;
        beta1 = beta2;
        P1 = P2;
        beta2 = (1-tau)*beta_l + tau*beta_u;
        P2 = func(beta2,l,u,ideal1);
    else
        beta_u = beta2;
        beta2 = beta1;
        P2 = P1;
        beta1 = (1-tau)*beta_u + tau*beta_l;
        P1 = func(beta1,l,u,ideal1);
    end
    k=k+1;
end

beta1;
P1;
% result of "b_lower'" obtained from mifis.m
LB=[     0
    0.2806
    0.4223
         0
    0.2806
    0.4223
         0
    0.2806
    0.4223
    0.1096
    0.2806
    0.4223
    0.1096
    0.2892
    0.4230
    0.1096
    0.6857
    0.6862
    0.1096
    0.2806
    0.4223
    0.1096
    0.3034
    0.4660
    0.1096
    0.9334
    0.9342
    0.1737
    0.4630
    0.5944
    0.2169
    0.4630
    0.5944
    0.2169
    0.4630
    0.5944
    0.4594
    0.4630
    0.5944
    0.4594
    0.4630
    0.5944
    0.4594
    0.6857
    0.6862
    0.4594
    0.4630
    0.5944
    0.4594
    0.4630
    0.5944
    0.4594
    0.9334
    0.9342
    0.3361
    0.4630
    0.5944
    0.3869
    0.4630
    0.5944
    0.3869
    0.4630
    0.5944
    0.5102
    0.5102
    0.5944
    0.5102
    0.5102
    0.5944
    0.5102
    0.6857
    0.6862
    0.5102
    0.5102
    0.5944
    0.5102
    0.5102
    0.5944
    0.5102
    0.9334
    0.9342
    0.0230
    0.3774
    0.4246
    0.0230
    0.3774
    0.4246
    0.0230
    0.3774
    0.4246
    0.2876
    0.3774
    0.4246
    0.2876
    0.4258
    0.4260
    0.2876
    0.6947
    0.6947
    0.2876
    0.3774
    0.4246
    0.2876
    0.4937
    0.5835
    0.2876
    0.9998
    1.0000
    0.4136
    0.5448
    0.6295
    0.4710
    0.5486
    0.6600
    0.4710
    0.5837
    0.7597
    0.6241
    0.6241
    0.6295
    0.6241
    0.6257
    0.7082
    0.6241
    0.7338
    0.7649
    0.6241
    0.6241
    0.6295
    0.6241
    0.6257
    0.7082
    0.6241
    0.9998
    1.0000
    0.4837
    0.5448
    0.6295
    0.5022
    0.5808
    0.6933
    0.5022
    0.6001
    0.7812
    0.6298
    0.6298
    0.6298
    0.6298
    0.6335
    0.7457
    0.6298
    0.7635
    0.8460
    0.6298
    0.6298
    0.6298
    0.6298
    0.6335
    0.7457
    0.6298
    0.9998
    1.0000
    0.0230
    0.3774
    0.4246
    0.0230
    0.3774
    0.4246
    0.0230
    0.3774
    0.4246
    0.2876
    0.3774
    0.4246
    0.2876
    0.4465
    0.6130
    0.2876
    0.6949
    0.6956
    0.2876
    0.3774
    0.4246
    0.2876
    0.4937
    0.6130
    0.2876
    0.9998
    1.0000
    0.4136
    0.5448
    0.6295
    0.4710
    0.6525
    0.7475
    0.4710
    0.7105
    0.7665
    0.6241
    0.6241
    0.6295
    0.6241
    0.6934
    0.7723
    0.6241
    0.7667
    0.7955
    0.6241
    0.6241
    0.6295
    0.6241
    0.6934
    0.7723
    0.6241
    0.9998
    1.0000
    0.4837
    0.5448
    0.6295
    0.5022
    0.7502
    0.8696
    0.5022
    0.8274
    0.9899
    0.6298
    0.6298
    0.6298
    0.6298
    0.8174
    0.8853
    0.6298
    0.8773
    0.9944
    0.6298
    0.6298
    0.6298
    0.6298
    0.8174
    0.8853
    0.6298
    0.9998
    1.0000];

% result of b_upper' obtained from mifis.m
UB=[ 0
    0.2806
    0.4223
    0.2169
    0.2892
    0.4230
    0.5837
    0.5837
    0.6862
    0.1096
    0.2892
    0.4230
    0.2892
    0.2892
    0.4230
    0.6857
    0.6857
    0.6862
    0.3034
    0.3034
    0.4660
    0.3034
    0.3034
    0.4660
    0.9334
    0.9334
    0.9342
    0.1737
    0.4630
    0.5944
    0.2169
    0.5486
    0.6600
    0.5837
    0.5837
    0.7597
    0.4594
    0.6257
    0.7082
    0.6257
    0.6257
    0.7082
    0.7338
    0.7338
    0.7649
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.3361
    0.5808
    0.6933
    0.3869
    0.5808
    0.6933
    0.6001
    0.6001
    0.7812
    0.5102
    0.6335
    0.7457
    0.6335
    0.6335
    0.7457
    0.7635
    0.7635
    0.8460
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.0230
    0.3774
    0.4246
    0.4258
    0.4258
    0.4260
    0.5837
    0.5837
    0.6947
    0.2876
    0.4258
    0.4260
    0.4258
    0.4258
    0.4260
    0.6947
    0.6947
    0.6947
    0.4937
    0.4937
    0.5835
    0.4937
    0.4937
    0.5835
    0.9998
    0.9998
    1.0000
    0.4136
    0.5448
    0.6295
    0.4710
    0.5486
    0.6600
    0.5837
    0.5837
    0.7597
    0.6241
    0.6257
    0.7082
    0.6257
    0.6257
    0.7082
    0.7338
    0.7338
    0.7649
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.4837
    0.5808
    0.6933
    0.5022
    0.5808
    0.6933
    0.6001
    0.6001
    0.7812
    0.6298
    0.6335
    0.7457
    0.6335
    0.6335
    0.7457
    0.7635
    0.7635
    0.8460
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.4465
    0.4465
    0.6130
    0.4465
    0.4465
    0.6130
    0.6949
    0.6949
    0.6956
    0.4465
    0.4465
    0.6130
    0.4465
    0.4465
    0.6130
    0.6949
    0.6949
    0.6956
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.6525
    0.6525
    0.7475
    0.6525
    0.6525
    0.7475
    0.7105
    0.7105
    0.7665
    0.6934
    0.6934
    0.7723
    0.6934
    0.6934
    0.7723
    0.7667
    0.7667
    0.7955
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    0.7502
    0.7502
    0.8696
    0.7502
    0.7502
    0.8696
    0.8274
    0.8274
    0.9899
    0.8174
    0.8174
    0.8853
    0.8174
    0.8174
    0.8853
    0.8773
    0.8773
    0.9944
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000];

[rol,col]=size(LB)
g=1;
for kkk=1:1:rol
    result(g,:)=(beta1*LB(kkk))+((1-beta1)*UB(kkk));
    g=g+1;
end
result

%beta1 is the optimal w
