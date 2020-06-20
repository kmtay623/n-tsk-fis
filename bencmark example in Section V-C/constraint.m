% a function used to generate monotonicity constraints and boundary constraints, i.e.,
% Eqs. (6.b) to (6.d)
function [k,kk,kkk]=constraint(fuzzyrule_matrix)

[a, b]=size (fuzzyrule_matrix);
fuzzyrule_matrix(:,b)=[];

[num_fuzzyrule, variable]= size (fuzzyrule_matrix);

for i=1:1:num_fuzzyrule
   for j=1:1:(variable-1)
    ant( i,j)=fuzzyrule_matrix (i,j);
   end
end

counter=1;
for i=1:1:num_fuzzyrule-1
   for j=i+1:1:num_fuzzyrule
    temp1=ant(i,:);
    temp2=ant(j,:);
       test=temp2>=temp1;
       temp3=sum (test);
       if (temp3==variable-1)
       monotone_pair(counter,:)= [i, j];
       counter=counter+1 ;
       end 
   end
end

[rol,col]=size(monotone_pair);
k1=zeros(rol,a);

for i=1:1:rol
    for j=1:1:a
    k1(i,monotone_pair(i,1))=(1);
    k1(i,monotone_pair(i,2))=(-1);
    end
end

% boundary constraints

g1=zeros(a,a);

for ro=1:1:a
g1(ro,ro)=-1;
end

g2=zeros(a,a);

for ro=1:1:a
g2(ro,ro)=1;
end

k=k1;
kk=g1;
kkk=g2;
