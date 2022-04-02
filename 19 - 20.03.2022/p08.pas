function cnt (c, s: string): integer;
var res, i: integer;
begin
    res := 0;
    for i := 1 to 6 do
        if s[i] = c then
            res := res + 1;
    cnt := res;
end;

function check (s: string): boolean;
begin
    check := (cnt('Б', s) = 1) and
             (cnt('Р', s) = 1) and
             (cnt('С', s) <= 1);
end;

function calc (s: string): integer;
var res: integer;
begin
    if length(s) = 6 then begin
        // writeln(s);
        if check(s) then
            calc := 1
        else
            calc := 0;
    end else begin
        res := 0;
        res := res + calc(s + 'Б');
        res := res + calc(s + 'О');
        res := res + calc(s + 'Р');
        res := res + calc(s + 'И');
        res := res + calc(s + 'С');
        calc := res;
    end;
end;

begin
    write(calc(''));
end.
