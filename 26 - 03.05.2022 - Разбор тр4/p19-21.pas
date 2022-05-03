function hod (a, mh, h: integer): string;
var res: string;
begin
    if a >= 22 then
        if h mod 2 = 1 then
            hod := '1'
        else
            hod := '2'
    else if h >= mh then
        hod := '3'
    else begin
        h := h + 1;
        res := '';
        res := res + hod(a + 1, mh, h);
        res := res + hod(a + 2, mh, h);
        if a mod 2 <> 0 then res := res + hod(a * 2, mh, h);
        
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
    for a:= 1 to 21 do begin
        write(a:4);
        for mh:= 1 to 6 do
            write(hod(a, mh, 0):5);
        writeln;
    end;
end.
