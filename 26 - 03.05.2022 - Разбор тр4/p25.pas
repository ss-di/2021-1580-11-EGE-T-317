function check(a, k, md: integer): boolean;
var res: boolean;
    d: integer;
begin
    if k = 2 then
        check := d-1 <> a
    else begin
        res := false;
        for d := md to round(sqrt(a)) do
            if a mod d = 0 then begin
                res := res or check(a div d, k+1, d+1);
            end;
        check := res;
    end;
end;

var
    k: integer;
begin
    for k := 1 to 30 do
        if not check(7000000 + k, 0, 2) then
            writeln(k);
end.
