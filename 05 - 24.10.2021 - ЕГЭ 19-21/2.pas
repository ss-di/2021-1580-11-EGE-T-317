function hod(a, h, mh: integer): string;
var res: string;
begin
    if a >= 29 then
        if h mod 2 = 1 then
           hod := '1'
        else
           hod := '2'
    else begin
        h := h + 1;
        if h > mh then
            hod := '0'
        else begin
            res:= hod(a+1, h, mh) + 
                hod(a*2, h, mh);
     
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
    for s:= 28 downto 1 do begin
       res := hod(s, 0, 9999);
       //if res = '2' then
          writeln(s, ' ', res);
    end;
end.