var
    i1, i2, i3, i4, i0, k:integer;
begin
    k:=0;
    for i4:= 0 to 2 do
        for i3:= 0 to 2 do
            for i2:= 0 to 2 do
                 for i1:= 0 to 2 do
                      for i0:= 0 to 2 do begin
                           k := k + 1;
                           if k = 240 then
                               writeln(i4, i3, i2, i1, i0);
                      end;
end.