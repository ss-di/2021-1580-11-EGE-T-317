function avt(x: integer): integer;
var t, s, d, e, s1, s2, min, max: integer;
begin
    t := x div 1000;
    s := x div 100 mod 10;
    d := x div 10 mod 10;
    e := x mod 10;
    s1 := t + s;
    s2 := d + e;
    if s1 > s2 then begin
        min := s2;
        max := s1;
    end else begin
        min := s1;
        max := s2;
    end;
    avt := max * 100 + min;
end;

var i, res: integer;
begin
   for i := 9999 downto 1000 do
      if avt(i) = 1311 then begin
          writeln(i);
          res := i;
      end;
   writeln('res = ', res)
end.