var data: array[1..20, 1..2] of integer;

function rec(i, k, s1, s2: integer):integer;
var v1, v2: integer;
begin
    if i = k then
        if (s1 mod 2 = 0) and (s2 mod 2 <> 0) then
            rec := s1 + s2
        else
            rec := -1
    else begin
        i := i + 1;
        v1 := rec(i, k, s1 + data[i][1], s2 + data[i][2]);
        v2 := rec(i, k, s1, s2);
        if v1 > v2 then
            rec := v1
        else
            rec := v2;
    end;
end;

var
    f: text;
    n, k, a, b, i: integer;
begin
    assign(f, 'a.txt');
    reset(f);
    read(f, n);
    writeln(n);
    k := 0;
    for i := 1 to n do begin
        read(f, a, b);
        if a mod 2 <> 0 then begin
            k := k + 1;
            if a < b then begin
                data[k][1] := a;
                data[k][2] := b;
            end else begin
                data[k][1] := b;
                data[k][2] := a;
            end;
        end;
    end;
    
    writeln(rec(0, k, 0, 0));
    
    close(f);
end.