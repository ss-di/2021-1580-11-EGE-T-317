var
    f: text;
    n, i, b, e, sum, cnt: integer;
    a: array[1.. 1897371] of integer;
    ost: array[0 .. 1111-1] of integer;
begin
    assign(f, '27-B.txt');
    reset(f);
    read(f, n);
    writeln(n);
    for i := 0 to 1110 do begin
        ost[i] := 0;
    end;
    ost[0] := 1;
    sum :=0;
    for i := 1 to n do begin
        read(f, a[i]);
        sum := sum +  a[i];
        ost[sum mod 1111] += 1;
    end;
    close(f);

    cnt:=0;
    for i := 0 to 1110 do begin
        cnt := cnt + (ost[i] * (ost[i] - 1)) div 2;
    end;
    writeln(cnt);
    readln;

end.



{
A: 5 5 5
B: 3 0 0 0 
1620157920
}