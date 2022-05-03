
function ok(s:string):boolean;
var i, a, n: integer;
begin
   a := 0;
   n := 0;
   for i := 1 to length(s) do
       if s[i] = 'Н' then
           n := n + 1
       else if s[i] = 'А' then
           a := a + 1;
   ok := (n = 2) and (a >= 1);
end;

function g(s:string):integer;
var from: string;   
    ans, i: integer;
begin
    if length(s) = 7 then
        if ok(s) then
            g := 1
        else
            g := 0
    else begin
        from := 'НАСТЯ';
        ans := 0;
        for i := 1 to length(from) do
            ans := ans + g(s + from[i]);
        g := ans;
    end;
end;

begin
    writeln(g(''));
end.