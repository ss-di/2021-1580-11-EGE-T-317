function f(x, y:real; a:integer): boolean;
begin
    f := (y-x <> 5) or 
         (a < 2*x*x*x + y) or
         (a < y*y + 16);
end;

var
   x, y, a: integer;
   ok: boolean;
begin
    for a := 39 to 50 do begin
        ok := true;
        for x := 1 to 10000 do
            for y := 1 to 10000 do
                if not f(x/1000, y/1000, a) then
                    ok := false;
        if ok then
            writeln(a);
    end;
end.