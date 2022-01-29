function avt(x: integer): integer;
var x2, y, i, st: integer;
    s : string;
begin
    x2 := x;
    s := '';
    while (x > 0) do begin
        s := x mod 2 + s;
        x := x div 2;
    end;
    delete(s, 1, 1);
    y := 0;
    st := 1;
    for i := length(s) downto 1 do begin
        if s[i] = '1' then
           y := y + st;
        st := st * 2;
    end;
    avt := x2 - y;
end;

var i, kol: integer;
a : array[1..10000] of integer;
begin
   for i := 1 to 10000 do a[i] := -1;
   
   kol := 0;
   for i := 500 to 5000 do begin
       if not (avt(i) in a) then begin
           kol := kol + 1;
           a[kol] := avt(i);
       end;
//       writeln(i, ' ', avt(i));
   end;
   writeln(a);
end.