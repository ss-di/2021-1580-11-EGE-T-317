procedure rec(var k:integer; s:string);
var i, cnt : integer; all:string;
begin
    //writeln(s);
    all := 'ШКОЛА';
    if length(s) = 3 then begin
       cnt := 0;
       for i := 1 to 3 do
         if s[i] = 'К' then
            cnt := cnt +1;
       if cnt = 1 then
          k := k +1;
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
    writeln(k);
end.