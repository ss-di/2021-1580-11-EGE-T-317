var
    f: text;
    s: string;
    cur_l, max_l, i:integer;
begin
    assign(f, '24.txt');
    reset(f);
    read(f, s);
    writeln(length(s));
    max_l := -1;
    i := 1;
    cur_l:=0;
    while i < length(s) do begin
        if (s[i] = 'A') and ((s[i+1] = 'B') or (s[i+1] = 'C')) then
            cur_l := cur_l + 1
        else
            cur_l := 0;
        if cur_l > max_l then
            max_l := cur_l;
        i := i + 2;
    end;
    i := 2;
    cur_l:=0;
    while i < length(s) do begin
        if (s[i] = 'A') and ((s[i+1] = 'B') or (s[i+1] = 'C')) then
            cur_l := cur_l + 1
        else
            cur_l := 0;
        if cur_l > max_l then
            max_l := cur_l;
        i := i + 2;
    end;

    writeln(max_l);
end.