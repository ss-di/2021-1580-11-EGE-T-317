function f(x, y, a:integer): boolean;
begin
    f := (y-x <> 5) or 
         (a < 2*x*x*x + y) or
         (a < y*y + 16);
end;

var
   x, y, a: integer;
   ok: boolean;
begin
    for a := 0 to 1000 do begin
        ok := true;
        for x := 1 to 1000 do
            for y := 1 to 1000 do
                if not f(x, y, a) then
                    ok := false;
        if ok then
            writeln(a);
    end;
end.