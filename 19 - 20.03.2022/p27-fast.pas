var
    f: text;
    n, t, a, b, i, s1, s2, min_nn, min_cn, min_nc, v1, v2: integer;
begin
    assign(f, 'b.txt');
    reset(f);
    read(f, n);
    writeln(n);
    min_nn := 20001;
    min_cn := 20001;
    min_nc := 20001;
    for i := 1 to n do begin
        read(f, a, b);
        if a mod 2 <> 0 then begin
            if a > b then begin
                t := a;
                a := b;
                b := t;
            end;
            s1 := s1 + a;
            s2 := s2 + b;
            if (a mod 2 <> 0) and (b mod 2 <> 0) and (a + b < min_nn) then
                min_nn := a + b;
            if (a mod 2 = 0) and (b mod 2 <> 0) and (a + b < min_cn) then
                min_cn := a + b;
            if (a mod 2 <> 0) and (b mod 2 = 0) and (a + b < min_nc) then
                min_nc := a + b;
        end;
    end;
    
    if (s1 mod 2 = 0) and (s2 mod 2 <> 0) then
        writeln(s1 + s2)
    else if (s1 mod 2 <> 0) and (s2 mod 2 <> 0) then begin
        v1 := s1 + s2 - min_nc;
        v2 := s1 + s2 - min_cn - min_nn;
        if v1 > v2 then writeln(v1) else writeln(v2);
    end else if (s1 mod 2 = 0) and (s2 mod 2 = 0) then begin
        v1 := s1 + s2 - min_cn;
        v2 := s1 + s2 - min_nc - min_nn;
        if v1 > v2 then writeln(v1) else writeln(v2);
    end else if (s1 mod 2 <> 0) and (s2 mod 2 = 0) then begin
        v1 := s1 + s2 - min_nn;
        v2 := s1 + s2 - min_cn - min_nc;
        if v1 > v2 then writeln(v1) else writeln(v2);
    end else
        writeln('beda');
    
    close(f);
end.
