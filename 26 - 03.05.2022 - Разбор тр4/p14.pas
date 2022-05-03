procedure rep(var s: string; f, t: string);
var p: integer;
begin
    p := pos(f, s);
    if p > 0 then begin
        delete(s, p, length(f));
        insert(t, s, p);
    end;
end;

function cnt(s, sym: string): integer;
var ans, i: integer;
begin
    ans := 0;
    for i := 1 to length(s) do
        if s[i] = sym then
            ans := ans + 1;
    cnt := ans;
end;

var a,b,c: biginteger;
ans : integer;
begin
    a := 729;
    b := 81;
    c := 3;
    a := 7 * power(a, 6) + 6 * power(b, 9) + power(c, 14) - 90;
    
    print(a);
    while a<>0 do begin
        if a mod 9 mod 2 = 0 then
            ans := ans + 1;
        a := a div 9;
    end;    
    writeln(ans);
end.