function j=address_to_j(variable, mat_temp, address)


[a, b]= size (mat_temp);
 
 address_temp=mat_temp;
 address_temp (:,2)=1;
 j= ones (variable, 1);
 
 for i=2:1:a
     temp=mat_temp (i-1, 2);
     address_temp (i, 2)= address_temp( i-1, 2)*temp;
 end
 
 
k=variable;
 while k>0
    temp=address_temp (k, 2);
    while temp<address
    address=address-temp;
    j ( k)=j ( k)+1;
    end
    k=k-1;
 end