% used to formulate constrained optimization problem, i.e., Eq. (6)
clear all
clc

% input-output data pairs as shown in Table IV (Section V-D)
data_set=[0.8 0.9	0.8	0.1	0.1	0.7
0.7	0.6	0.9	0.2	0.3	0.6
0.7	0.7	0.7	0.2	0.6	0.6
0.6	0.9	0.9	0.4	0.4	0.8
0.8	0.6	0.3	0.9	0.9	0.8
0.2	0.4	0.2	0.8	0.1	0.3
0.1	0.2	0.4	0.1	0.2	0.1
0.3	0.3	0.3	0.8	0.3	0.4
0.5	0.2	0.1	0.2	0.1	0.3
0.8	0.2	0.2	0.5	0.1	0.5];

[a,b]=size(data_set);
x=data_set;
x(:,b)=[];
y=data_set(:,b);
[fuzziness,size_fuzziness,complete_fuzzyrule_temp]=  fuzzymf([ones(1,b)]); 
[num_fuzzyrule, variable]= size (complete_fuzzyrule_temp);

for i=1:1:a 
  
[fuzziness,size_fuzziness,complete_fuzzyrule]= fuzzymf(x(i,:));
  for j=1:1:num_fuzzyrule
   for k=1:1:(variable)
    temp=complete_fuzzyrule_temp( j, k);
    k_temp=fuzziness{k};
    m(k)=k_temp(temp) ;
   end 
    firing_strength(j)=prod (m);
    below= sum (firing_strength);
    firing_strength_temp=firing_strength/below;
    z=y (i);
  end
  sse_matrix(i,:)=[firing_strength_temp,-z];
 end

temp=(sum(sse_matrix));
temp1=[1:1:num_fuzzyrule+1];
sse_matrix_temp=[sse_matrix;temp1];
count=1;
for l=1:1:(num_fuzzyrule+1)%
    if temp (l)~=0
    reduce_sse_index(:,count)=sse_matrix_temp(:,l);
    count=count+1;
    end  
end

act_rule=reduce_sse_index(end,1:end-1);

[opt_a, opt_b]=size (reduce_sse_index);

A= zeros(opt_b); 
for m=1:1:opt_a-1
params=reduce_sse_index(m,:);
A_temp=params'*params;
A=A+A_temp;
end


for count=1:1:variable  
 temp1=fuzziness{count};
 [temp2, temp3]=size(temp1);
 count;
 mat_temp(count,:)= [count, temp3];
 end

[size_a, size_b]=size ( act_rule);
for count=1:1:size_b
j_select(:, count)=address_to_j(variable, mat_temp, act_rule(count))';
end

j_select123=j_select;
j_select123(variable+1,:)=0;
j_select1234=j_select123';
[k_temp,kk,kkk]=constraint(j_select1234);



mag=[0];
for i=1:1:a
magnitude_of_sse=(max(1-y(i),y(i))).^2;
mag=mag+magnitude_of_sse;
end

save('sse1.mat','A'); % a combined matrix generated for (1) M×M "H"(a semipositive definite matrix) (2) (-y^k) for "const=(y^k)^2", as discussed in Section IV-D
ICON=[k_temp;kk];
save('sse2.mat','ICON');% monotonicity constraints, i.e., Eq. (6.b) and boundary constraints, i.e, Eq. (6.c)
save('sse3.mat','kkk');% boundary constraints, i.e., Eq. (6.d)

n_of_iqcons=size([ICON;kkk])
