function P(x: real): boolean;
begin
    P := (x >= 6) and (x <= 45);
end;

function Q(x: real): boolean;
begin
    Q := (x >= 18) and (x <= 52);
end;

function A(x: real): boolean;
begin
    A := (x >= 6) and (x <= 18);
end;

function f(x: real): boolean;
begin
    f := (Q(x) = P(x)) or (not (P(x) and not Q(x)) or A(x));
end;

var x: real;
begin
    x:=0;
    while x < 60 do begin
        if not f(x) then
            write(x, ' ');
        x := x + 0.1;
    end;
    
end.