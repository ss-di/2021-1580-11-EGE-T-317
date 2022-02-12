
function f(x:integer):boolean;
var a: integer;
begin
    a := 1024-1-2-8-32-64-128-256-512;
    writeln(System.Convert.ToString(a, 2):8, ' ', a);
    f := not (x and A <>0) or (not(x and 20 = 0) or (x and 5 <> 0));
end;

var x:integer;
begin
   for x := 0 to 512 do
      if not f(x) then
          writeln(System.Convert.ToString(x, 2):8, ' ', x);
end.