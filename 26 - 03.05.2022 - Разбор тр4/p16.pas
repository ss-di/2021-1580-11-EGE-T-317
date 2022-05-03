
function f(a, b: biginteger): biginteger;
begin
    if a = 0 then
        f := b
    else
        f := f(a div 10, 10 * b + (a mod 10));
end;

var a: biginteger;
begin
    a := 4623618421;
    writeln(f(a, 0));
end.