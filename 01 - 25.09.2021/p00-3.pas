procedure rec(var k:integer; s:string);
var i : integer; all:string;
begin
    //writeln(s);
    all := 'УОА';
    if length(s) = 5 then begin
        k := k + 1;
         if k = 240 then
            writeln(s);
    end else begin
       for i := 1 to length(all) do begin
           rec(k, s + all[i]);
       end;
    end;
    
end;
var
    k:integer;
begin
    k := 0;
    rec(k, '');
end.