function checkout=check(q,num)
t=0;
i=length(q);

for j=1:i
    if(isnumeric(q{j})==1)
    if(q{j}==num)
        t=1;
        break;
    end
    end
end
checkout=t;
end