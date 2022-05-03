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
    s, s2:string;
    p, i, ans: integer;
begin
    assign(f, '24.txt');
    reset(f);
    readln(f, s);
    close(f);
    
    ans := 0;
    p := pos('A', s);     // sssAsdfAsdfAddd
    if p > 0 then begin
        delete(s, 1, p);  // sdfAsdfAddd
        s2 := '';
        for i := 1 to length(s) do begin
            if s[i] <> 'A' then
                s2 := s2 + s[i]
            else begin
                if (cnt(s2) >= 2) and (length(s2) >= 10) then
                    ans := ans + 1;
                s2 := '';
            end;
        end;
    end;
    writeln(ans);
end.
