var
    f: text;
    n, i, b, e, sum, cnt: integer;
    a: array[1.. 1897371] of integer;
begin
    assign(f, '27-A.txt');
    reset(f);
    read(f, n);
    writeln(n);
    for i := 1 to n do
        read(f, a[i]);
    close(f);
    cnt:= 0;
    for b := 1 to n do begin
        //writeln(b);
        for e := b to n do begin
            sum := 0;
            for i := b to e do
                sum := sum + a[i];
            if sum mod 1111 = 0 then
                cnt := cnt + 1;
        end;
    end;
    writeln(cnt);
    readln;
end.