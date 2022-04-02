
var
    f: text;
    n, i, b, e, sum, cnt: integer;
    a: array[1.. 1897371] of integer;
    sums: array[0 .. 1897371] of integer;
begin
    assign(f, '27-B.txt');
    reset(f);
    read(f, n);
    writeln(n);
    sums[0] := 0;
    for i := 1 to n do begin
        read(f, a[i]);
        sums[i] := sums[i-1] + a[i];
    end;
    close(f);
    cnt:= 0;
    for b := 1 to n do begin
        if b mod 1000 = 0 then writeln(b/1897371*100, ' ', Milliseconds/1000, ' ',(Milliseconds/1000)/(b/1897371*100)*(100-b/1897371*100));
        for e := b to n do begin
            if (sums[e] - sums[b-1]) mod 1111 = 0 then
                cnt := cnt + 1;
        end;
    end;
    writeln(cnt);
    readln;

end.

{
A:   3 7  1   4
B: 0 3 10 11  15
}