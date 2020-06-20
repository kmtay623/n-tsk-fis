clear all
clc

%Step 2.5 (Section IV-F)
% Antecedent of the available fuzzy rules
a_avaiable=[        1     1     1     1     1
       2     1     1     1     1
     3     1     1     1     1
     1     1     2     1     1
     2     2     2     1     1
     3     2     2     1     1
     2     3     2     1     1
     3     3     2     1     1
     2     2     3     1     1
     3     2     3     1     1
     2     3     3     1     1
     3     3     3     1     1
     1     1     1     2     1
     2     1     1     2     1
     3     1     1     2     1
     1     2     1     2     1
     1     1     2     2     1
     1     1     1     3     1
     1     2     1     3     1
     1     1     2     3     1
     1     1     1     1     2
     2     1     1     1     2
     3     1     1     1     2
     1     1     2     1     2
     2     2     2     1     2
     3     2     2     1     2
     2     3     2     1     2
     3     3     2     1     2
     2     2     3     1     2
     3     2     3     1     2
     2     3     3     1     2
     3     3     3     1     2
     1     1     1     2     2
     2     1     1     2     2
     3     1     1     2     2
     1     2     1     2     2
     2     2     1     2     2
     3     2     1     2     2
     2     3     1     2     2
     3     3     1     2     2
     1     1     2     2     2
     2     2     2     2     2
     3     2     2     2     2
     2     3     2     2     2
     3     3     2     2     2
     1     1     1     3     2
     1     2     1     3     2
     2     2     1     3     2
     3     2     1     3     2
     2     3     1     3     2
     3     3     1     3     2
     1     1     2     3     2
     2     2     2     3     2
     3     2     2     3     2
     2     3     2     3     2
     3     3     2     3     2
     2     2     2     1     3
     3     2     2     1     3
     2     3     2     1     3
     3     3     2     1     3
     2     2     1     2     3
     3     2     1     2     3
     2     3     1     2     3
     3     3     1     2     3
     2     2     2     2     3
     3     2     2     2     3
     2     3     2     2     3
     3     3     2     2     3
     2     2     1     3     3
     3     2     1     3     3
     2     3     1     3     3
     3     3     1     3     3
     2     2     2     3     3
     3     2     2     3     3
     2     3     2     3     3
     3     3     2     3     3
     3     3     3     3     3] ; 

% Consequent of the available fuzzy rule base with respect to the
% antecedent of the available fuzzy rule base
b_avaiable= [0
0.280642764
0.422262382
0.109641849
0.28916311
0.42298464
0.685686112
0.686199825
0.303401458
0.466017439
0.933401775
0.934241169
0.173677428
0.462964185
0.594437458
0.216918592
0.459379449
0.336106344
0.386914024
0.51019136
0.022998424
0.377361441
0.424604463
0.287603146
0.425774849
0.425993561
0.694665473
0.694679268
0.493721911
0.583495781
0.99978351
0.999961901
0.413632535
0.544769617
0.629531783
0.471005553
0.548593836
0.659978368
0.583721729
0.759696008
0.624126302
0.625741129
0.708194699
0.733752809
0.764902718
0.48365382
0.50223779
0.580796949
0.693267696
0.600119051
0.781201235
0.629768614
0.63351757
0.745736549
0.763461409
0.845998718
0.44647047
0.612952219
0.694940205
0.695561377
0.65250976
0.747470631
0.710508363
0.766495167
0.693351097
0.77225637
0.766749383
0.795517443
0.750174177
0.869645326
0.827425414
0.989946249
0.817428246
0.885270864
0.877308197
0.994365729
1];

[avai_rule, num_input]=size(a_avaiable);

% all fuzzy rules
a_all=[    1     1     1     1     1
     2     1     1     1     1
     3     1     1     1     1
     1     2     1     1     1
     2     2     1     1     1
     3     2     1     1     1
     1     3     1     1     1
     2     3     1     1     1
     3     3     1     1     1
     1     1     2     1     1
     2     1     2     1     1
     3     1     2     1     1
     1     2     2     1     1
     2     2     2     1     1
     3     2     2     1     1
     1     3     2     1     1
     2     3     2     1     1
     3     3     2     1     1
     1     1     3     1     1
     2     1     3     1     1
     3     1     3     1     1
     1     2     3     1     1
     2     2     3     1     1
     3     2     3     1     1
     1     3     3     1     1
     2     3     3     1     1
     3     3     3     1     1
     1     1     1     2     1
     2     1     1     2     1
     3     1     1     2     1
     1     2     1     2     1
     2     2     1     2     1
     3     2     1     2     1
     1     3     1     2     1
     2     3     1     2     1
     3     3     1     2     1
     1     1     2     2     1
     2     1     2     2     1
     3     1     2     2     1
     1     2     2     2     1
     2     2     2     2     1
     3     2     2     2     1
     1     3     2     2     1
     2     3     2     2     1
     3     3     2     2     1
     1     1     3     2     1
     2     1     3     2     1
     3     1     3     2     1
     1     2     3     2     1
     2     2     3     2     1
     3     2     3     2     1
     1     3     3     2     1
     2     3     3     2     1
     3     3     3     2     1
     1     1     1     3     1
     2     1     1     3     1
     3     1     1     3     1
     1     2     1     3     1
     2     2     1     3     1
     3     2     1     3     1
     1     3     1     3     1
     2     3     1     3     1
     3     3     1     3     1
     1     1     2     3     1
     2     1     2     3     1
     3     1     2     3     1
     1     2     2     3     1
     2     2     2     3     1
     3     2     2     3     1
     1     3     2     3     1
     2     3     2     3     1
     3     3     2     3     1
     1     1     3     3     1
     2     1     3     3     1
     3     1     3     3     1
     1     2     3     3     1
     2     2     3     3     1
     3     2     3     3     1
     1     3     3     3     1
     2     3     3     3     1
     3     3     3     3     1
     1     1     1     1     2
     2     1     1     1     2
     3     1     1     1     2
     1     2     1     1     2
     2     2     1     1     2
     3     2     1     1     2
     1     3     1     1     2
     2     3     1     1     2
     3     3     1     1     2
     1     1     2     1     2
     2     1     2     1     2
     3     1     2     1     2
     1     2     2     1     2
     2     2     2     1     2
     3     2     2     1     2
     1     3     2     1     2
     2     3     2     1     2
     3     3     2     1     2
     1     1     3     1     2
     2     1     3     1     2
     3     1     3     1     2
     1     2     3     1     2
     2     2     3     1     2
     3     2     3     1     2
     1     3     3     1     2
     2     3     3     1     2
     3     3     3     1     2
     1     1     1     2     2
     2     1     1     2     2
     3     1     1     2     2
     1     2     1     2     2
     2     2     1     2     2
     3     2     1     2     2
     1     3     1     2     2
     2     3     1     2     2
     3     3     1     2     2
     1     1     2     2     2
     2     1     2     2     2
     3     1     2     2     2
     1     2     2     2     2
     2     2     2     2     2
     3     2     2     2     2
     1     3     2     2     2
     2     3     2     2     2
     3     3     2     2     2
     1     1     3     2     2
     2     1     3     2     2
     3     1     3     2     2
     1     2     3     2     2
     2     2     3     2     2
     3     2     3     2     2
     1     3     3     2     2
     2     3     3     2     2
     3     3     3     2     2
     1     1     1     3     2
     2     1     1     3     2
     3     1     1     3     2
     1     2     1     3     2
     2     2     1     3     2
     3     2     1     3     2
     1     3     1     3     2
     2     3     1     3     2
     3     3     1     3     2
     1     1     2     3     2
     2     1     2     3     2
     3     1     2     3     2
     1     2     2     3     2
     2     2     2     3     2
     3     2     2     3     2
     1     3     2     3     2
     2     3     2     3     2
     3     3     2     3     2
     1     1     3     3     2
     2     1     3     3     2
     3     1     3     3     2
     1     2     3     3     2
     2     2     3     3     2
     3     2     3     3     2
     1     3     3     3     2
     2     3     3     3     2
     3     3     3     3     2
     1     1     1     1     3
     2     1     1     1     3
     3     1     1     1     3
     1     2     1     1     3
     2     2     1     1     3
     3     2     1     1     3
     1     3     1     1     3
     2     3     1     1     3
     3     3     1     1     3
     1     1     2     1     3
     2     1     2     1     3
     3     1     2     1     3
     1     2     2     1     3
     2     2     2     1     3
     3     2     2     1     3
     1     3     2     1     3
     2     3     2     1     3
     3     3     2     1     3
     1     1     3     1     3
     2     1     3     1     3
     3     1     3     1     3
     1     2     3     1     3
     2     2     3     1     3
     3     2     3     1     3
     1     3     3     1     3
     2     3     3     1     3
     3     3     3     1     3
     1     1     1     2     3
     2     1     1     2     3
     3     1     1     2     3
     1     2     1     2     3
     2     2     1     2     3
     3     2     1     2     3
     1     3     1     2     3
     2     3     1     2     3
     3     3     1     2     3
     1     1     2     2     3
     2     1     2     2     3
     3     1     2     2     3
     1     2     2     2     3
     2     2     2     2     3
     3     2     2     2     3
     1     3     2     2     3
     2     3     2     2     3
     3     3     2     2     3
     1     1     3     2     3
     2     1     3     2     3
     3     1     3     2     3
     1     2     3     2     3
     2     2     3     2     3
     3     2     3     2     3
     1     3     3     2     3
     2     3     3     2     3
     3     3     3     2     3
     1     1     1     3     3
     2     1     1     3     3
     3     1     1     3     3
     1     2     1     3     3
     2     2     1     3     3
     3     2     1     3     3
     1     3     1     3     3
     2     3     1     3     3
     3     3     1     3     3
     1     1     2     3     3
     2     1     2     3     3
     3     1     2     3     3
     1     2     2     3     3
     2     2     2     3     3
     3     2     2     3     3
     1     3     2     3     3
     2     3     2     3     3
     3     3     2     3     3
     1     1     3     3     3
     2     1     3     3     3
     3     1     3     3     3
     1     2     3     3     3
     2     2     3     3     3
     3     2     3     3     3
     1     3     3     3     3
     2     3     3     3     3
     3     3     3     3     3] ;

[total_rule, num_input]=size ( a_all);
%least upper bound denoted "lower(a)" and greatest lower bound denoted "upper(a)" are obtained for (3) and (6), respectively
for a= 1:1:total_rule
     ant_a_all=a_all (a,:);
         lower(a)=1;
         upper(a)=0;
     for b=1:1:avai_rule
         ant_a_avaiable=a_avaiable (b,:);
         if (ant_a_avaiable(1)>=ant_a_all(1) && ant_a_avaiable(2)>=ant_a_all(2)&& ant_a_avaiable(3)>=ant_a_all(3)&& ant_a_avaiable(4)>=ant_a_all(4)&& ant_a_avaiable(5)>=ant_a_all(5))
         lower(a)= min(lower(a), b_avaiable(b));
         end
         if (ant_a_all(1)>=ant_a_avaiable(1) && ant_a_all(2)>=ant_a_avaiable(2)&& ant_a_all(3)>=ant_a_avaiable(3)&& ant_a_all(4)>=ant_a_avaiable(4)&& ant_a_all(5)>=ant_a_avaiable(5))
         upper(a)= max(upper(a), b_avaiable(b));
         end
      end    
end
%greatest lower bound denoted "lower_1(a_1)" and least upper bound denoted "upper_1(a_1)" are obtained for (3) and (6), respectively
for a_1= 1:1:total_rule
     ant_a_all_1=a_all (a_1,:);
         lower_1(a_1)=0;
         upper_1(a_1)=1;
     for b_1=1:1:avai_rule
         ant_a_avaiable_1=a_avaiable (b_1,:);
         if (ant_a_all_1(1)>=ant_a_avaiable_1(1) && ant_a_all_1(2)>=ant_a_avaiable_1(2)&& ant_a_all_1(3)>=ant_a_avaiable_1(3)&& ant_a_all_1(4)>=ant_a_avaiable_1(4)&& ant_a_all_1(5)>=ant_a_avaiable_1(5)) 
         lower_1(a_1)= max(lower_1(a_1), b_avaiable(b_1));
         end
         if (ant_a_avaiable_1(1)>=ant_a_all_1(1) && ant_a_avaiable_1(2)>=ant_a_all_1(2)&& ant_a_avaiable_1(3)>=ant_a_all_1(3)&& ant_a_avaiable_1(4)>=ant_a_all_1(4)&& ant_a_avaiable_1(5)>=ant_a_all_1(5))
         upper_1(a_1)= min(upper_1(a_1), b_avaiable(b_1));
         end
      end    
end

for j=1:1:total_rule
    b_lower(j)=min(max(lower(j)',0),min(lower_1(j)',1)); % lower limit(minimum) of both greatest lower bound denoted "lower(a)" and least upper bound denoted "lower_1(a_1)" are obtained, and equation (3) is resulted
    b_upper(j)=max(min(upper(j)',1),max(upper_1(j)',0)); % upper limit(maximum) of both least upper bound denoted "upper(a)" and greatest lower bound denoted "upper_1(a_1)" are obtained, and equation (6) is resulted
end

%interval_valued_fuzzy_rule=[b_lower',b_upper'];

%b_lower'
b_upper'


