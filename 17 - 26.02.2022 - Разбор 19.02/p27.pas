var
    f: text;
    n, i, b, e, sum, ms, ml: integer;
    a: array[1.. 2561740] of integer;
begin
    assign(f, '27_a.txt');
    reset(f);
    read(f, n);
    writeln(n);
    for i := 1 to n do
        read(f, a[i]);
    close(f);
    for b := 1 to n do begin
        if (b mod 100 = 0) then
            writeln(b, ' ', n , ' ', round(b/n*100));
        for e := b to n do begin
            sum := 0;
            for i := b to e do
                sum := sum + a[i];
            if (sum mod 67 = 0) and (sum > ms) then begin
                ms := sum;
                ml := e-b+1;
            end else if (sum mod 67 = 0) and (sum = ms) and (e-b+1 < ml) then
                ml := e-b+1;
        end;
    end;
        writeln(ms);
        writeln(ml);
end.