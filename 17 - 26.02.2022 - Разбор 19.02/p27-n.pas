var
    f: text;
    n, i, b, e, ml, ost: integer;
    sum, ms: int64;
    a: array[1.. 2561740] of integer;
    smin, smax: array[0..66] of int64;
begin
    assign(f, '27_b.txt');
    reset(f);
    read(f, n);
    writeln(n);
    for i := 1 to n do
        read(f, a[i]);
    close(f);
    for i := 1 to 66 do begin
        smin[i] := -1;
        smax[i] := -1;
    end;
    {2147483647
    208 957 389
    100000000000
    9223372036854775807}
    smin[0] := 0;
    smax[0] := 0;
    sum := 0;
    for i := 1 to n do begin
        sum := sum + a[i];
        ost := sum mod 67;
        if smin[ost] = -1 then begin
            smin[ost] := sum;
            smax[ost] := sum;
        end else
            smax[ost] := sum;
    end;
    
    ms := -1;
    for i := 0 to 66 do
        if smax[i] - smin[i] > ms then
            ms := smax[i] - smin[i];

    writeln(ms);
end.