function [IDSout,tf]=IDS(a,w)
tf=0;
javab=[1 2 3;4 5 6;7 8 0];
i=2;
count=0;
d=0;
m=0;
q={[''],['']};
[num1,num2,num3,num4]=number(a);
while(true)     
if(num1==javab)    
   q{end+1}=strcat(q{i-1},'-R');
    q{end+1}=num1;
    num1
    q{end-1}
    count  
   d=length(q{end-1})/2
   tf=1;
    break;
    
elseif(num2==javab)
   q{end+1}=strcat(q{i-1},'-L');
    q{end+1}=num2;
    num2
    q{end-1}
    count
    d=length(q{end-1})/2
    tf=1;
    break;
    
elseif(num3==javab)
    q{end+1}=strcat(q{i-1},'-B');
    q{end+1}=num3;
    num3
    q{end-1}
    count
    d=length(q{end-1})/2
    tf=1;
    break;    
elseif(num4==javab)
    q{end+1}=strcat(q{i-1},'-T');
    q{end+1}=num4;
    num4
    q{end-1}
    count
    d=length(q{end-1})/2
    tf=1;
    break;
    
else
    if(sum(num1)~=0)
        if(Check(q,num1)==0)
     q{end+1}=strcat(q{i-1},'-R');
    q{end+1}=num1;
        end
       end
        if(sum(num2)~=0)
             if(Check(q,num2)==0)
    q{end+1}=strcat(q{i-1},'-L');
    q{end+1}=num2;
             end
        end
    if(sum(num3)~=0)
         if(Check(q,num3)==0)
     q{end+1}=strcat(q{i-1},'-B');
    q{end+1}=num3;
         end
    end
    if(sum(num4)~=0)
         if(Check(q,num4)==0)
     q{end+1}=strcat(q{i-1},'-T');
    q{end+1}=num4;
         end
    end
    
     [num1,num2,num3,num4]=number(q{i+2});
     count=count+1;
     i=i+2;
    
     
     
end
 if(length(q{end-1})/2>m)
        i=2;
        count=0;
        d=0;
        m=m+1;
        q={[''],['']}
        [num1,num2,num3,num4]=number(a);
 elseif(m==w)
     display('Finish')
     break;
    end
end
end