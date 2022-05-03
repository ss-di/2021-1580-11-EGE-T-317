
var
    f: text;
    mas:array[1..10000,1..10000] of integer;
    r, c, n, i, mr, mc, cc: integer;
begin
    for r := 1 to 10000 do
        for c := 1 to 10000 do
            mas[r, c] := 0;
    assign(f, '26.txt');
    reset(f);
    read(f, n);
    for i := 1 to n do begin
        read(f, r, c);
        mas[r, c] := 1;
    end;
    close(f);

    mc := -1;
    for r := 1 to 10000 do begin
        cc := 0;
        for c := 1 to 10000 do
            if (c mod 2 = 0) and (mas[r, c] = 1) then
                cc := cc + 1;
        if cc > mc then begin
            mc := cc;
            mr := r;
        end;
    end;
    writeln(mc, ' ', mr);
end.
