
function f(x:real):boolean;
var p, q, a: boolean;
begin
    p := (37 <= x) and (x <= 60);
    q := (40 <= x) and (x <= 77);
    a := false; //(40 <= x) and (x <= 60);
    f := not P or not Q or A;
end;

var x:integer;
x1:real;
begin
   for x := 1 to 1000 do
      if not f(x/10) then
          write(x/10, ' ');
          
   writeln;
   x1 := 0;
   while x1 <= 1000 do begin
      if not f(x1) then
          write(x1, ' ');
      x1 := x1 + 0.1;
   end;
end.