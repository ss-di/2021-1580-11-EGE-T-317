function M(n:integer): integer;
var
    del: array[1..20] of integer; 
    cnt, d, i,j: integer;
    
begin
    cnt := 0;
    for d := 2 to round(sqrt(n)) do begin
        if n mod d = 0 then begin
            cnt := cnt + 1;
            del[cnt] := d;
            if (d*d <> n) then begin
                cnt := cnt + 1;
                del[cnt] := n div d;
            end;
            if cnt > 10 then break;
        end;
    end;
    if cnt < 5 then
        M := 0
    else begin
        for i := 1 to cnt - 1 do
            for j := i to cnt - i do
                if del[j] > del[j + 1] then begin
                    d := del[j];
                    del[j] := del[j+1];
                    del[j+1] := d;
                end;
        M := del[cnt-4];
    end;
    
end;

var
  n, cnt, curM: integer;

begin
    writeln(M(1000));
    n := 300000000;
    cnt := 0;
    while cnt < 5 do begin
        n := n + 1;
        curM := M(n);
        if curM > 0 then begin
            cnt := cnt + 1;
            writeln(curM);
        end;
    end;
end.
