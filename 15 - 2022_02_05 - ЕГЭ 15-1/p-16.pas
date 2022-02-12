
function f(x:integer):boolean;
var a, p, q: boolean;
begin
    a := false;
    p := x and 128 <> 0;
    q := x and 7 = 0;
    f := A or not P or Q;
end;

var x, cnt:integer;
begin
   cnt := 0;
   for x := 0 to 255 do
      if not f(x) then begin
          write(x, ' ');
          cnt := cnt + 1;
      end;
   writeln;
   writeln(cnt);
end.