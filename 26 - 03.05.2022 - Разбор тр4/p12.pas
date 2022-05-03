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

var s: string;
begin
    //readln(s);
    s := '022222222211211211211211211211211211111110';
    writeln(cnt(s, '2'));
    while pos('00', s) = 0 do begin
        rep(s, '021', '102');
        rep(s, '022', '301');
        rep(s, '02', '20');
        rep(s, '01', '10');
    end;
    writeln(s);
    writeln(cnt(s, '1'));
    writeln(cnt(s, '2'));
    writeln(cnt(s, '3'));

end.