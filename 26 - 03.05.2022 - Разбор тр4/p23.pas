function f (x, u: integer): integer;
begin
    if x = 11 then
        f := 1
    else if x > 11 then
        f := 0
    else begin
        if u < 2 then
            f := f(x+1, u) + f(x*2, u+1)
        else
            f := f(x+1, u);
    end;
end;

begin
    writeln(f(1,0));
end.
