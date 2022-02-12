
function f(x:integer):boolean;
var a, b, c: boolean;
begin
    a := false;
    b := x in [2, 4, 6, 8, 10, 12];
    c := x in [4, 8, 12, 116];
    f := not B or (not (c and not A) or not B);
end;

var x, s:integer;
begin
   s := 0;
   for x := 1 to 150 do
      if not f(x) then begin
          write(x, ' ');
          s := s + x;
      end;
   writeln;
   writeln(s);
end.