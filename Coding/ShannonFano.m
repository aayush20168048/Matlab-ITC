function o=ShannonFano(p,o,s,e)
[nr, nc] = size(p(1:1,s:e));
if(nc==1)
    return
end
he = floor(nc/2);
m = s+he-1 ;
fsum = sum(p(1:1,s:e));
hsum = fsum/2 ;
sumt = 0 ;
for n=s:m
    sumt = sumt+p(n);
    if(sumt>=hsum)
        m=n;
        break
    end
end

for n=s:m    
    o{n}=strcat(o{n},'0');
end;

am = m+1;
for n=am:e  
    o{n} = strcat(o{n},'1');
end

o = ShannonFano(p,o,s,m);
o = ShannonFano(p,o,am,e);
return 
end