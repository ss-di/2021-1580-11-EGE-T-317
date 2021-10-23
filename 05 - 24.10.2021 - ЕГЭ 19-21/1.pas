function hod(a, b, h, mh: integer): string;
var res: string;
begin
    if a + b >= 77 then
        if h mod 2 = 1 then
           hod := '1'
        else
           hod := '2'
    else begin
        h := h + 1;
        if h > mh then
            hod := '0'
        else begin
            res:= hod(a+1, b, h, mh) + 
                hod(a, b+1, h, mh) + 
                hod(a*2, b, h, mh) +
                hod(a, b*2, h, mh);
     
             if h mod 2 = 1 then begin
                 if pos('1', res) > 0 then hod:='1'
                 else if pos('0', res) > 0 then hod:='0'
                 else hod:='2'
             end else begin
                 if pos('2', res) > 0 then hod:='2'
                 else if pos('0', res) > 0 then hod:='0'
                 else hod:='1';
             end;
        end;
    end;
end;


var s:integer;
res: string;
   
begin
    for s:= 69 downto 1 do begin
       res := hod(7, s, 0, 2);
       if res = '2' then
          writeln(s, ' ', res);
    end;
end.