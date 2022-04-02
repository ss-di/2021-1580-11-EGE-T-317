function hod (a, mh, h, p: integer): string;
var res: string;
begin
    if a >= 43 then
        if h mod 2 = 1 then
            hod := '1'
        else
            hod := '2'
    else if h >= mh then
        hod := '3'
    else begin
        h := h + 1;
        res := '';
        if p <> 1 then res := res + hod(a + 1, mh, h, 1);
        if p <> 2 then res := res + hod(a + 2, mh, h, 2);
        if p <> 3 then res := res + hod(a * 2, mh, h, 3);
        
        if h mod 2 = 1 then
            if pos('1', res) > 0 then
                hod := '1'
            else if pos('3', res) > 0 then
                hod := '3'
            else
                hod := '2'
        else
            if pos('2', res) > 0 then
                hod := '2'
            else if pos('3', res) > 0 then
                hod := '3'
            else
                hod := '1';
    end;
end;

var
   mh, a: integer;
begin
    write('    ');
    for mh:= 1 to 6 do
        write(mh:5);
    writeln;
    for a:= 1 to 42 do begin
        write(a:4);
        for mh:= 1 to 6 do
            write(hod(a, mh, 0, -1):5);
        writeln;
    end;
end.
