function cnt(s: string): integer;
var ans, i: integer;
begin
    ans := 0;
    for i := 1 to length(s) do
        if s[i] = 'B' then
            ans := ans + 1;
    cnt := ans;
end;

var
    f: text;
    s:string;
    p, ans: integer;
begin
    assign(f, '24.txt');
    reset(f);
    readln(f, s);
    close(f);
    
    ans := 0;
    p := pos('A', s);     // sssAsdfAsdfAddd
    if p > 0 then begin
        delete(s, 1, p);  // sdfAsdfAddd
        p := pos('A', s);
        while p > 0 do begin
            writeln(ans, ' ', length(s));
            if cnt(copy(s, 1, p-1)) >= 2 then
                ans := ans + 1;
            delete(s, 1, p); // sdfAddd
            p := pos('A', s);
        end;
    end;
    writeln(ans);
end.
