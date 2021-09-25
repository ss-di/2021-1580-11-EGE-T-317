var
    i4, i3, i2, i1, i0:string;
    all: array of string = ('У', 'О', 'A');
    k:integer;
begin
    k:=0;
    foreach i4 in all do
        foreach i3 in all do
            foreach i2 in all do
                foreach i1 in all do
                    foreach i0 in all do begin
                         k := k + 1;
                         if k=240 then
                             writeln(i4+i3+i2+i1+i0);
                    end;
end.