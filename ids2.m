function oout=ids2(a)
d=0;
while true
    [~,tf]=IDS(a,d);
    d=d+1;
    if(tf==1)
        break;
    end
    
    
end
end