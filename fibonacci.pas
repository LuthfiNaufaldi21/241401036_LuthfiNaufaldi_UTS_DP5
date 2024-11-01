program DeretFibonacci;
uses crt;

var
    n, i, a, b, c, total: integer;

begin
    clrscr;
    write('Masukkan nilai N : ');
    readln(n);
  
    a := 0;
    b := 1;
    total := a + b;
  
    write('Sequence = ', a, ', ', b);
  
    for i := 3 to n do
    begin
      c := a + b;
      write(', ', c);
      total := total + c;
      a := b;
      b := c;
    end;
  
    writeln;
    writeln('Total = ', total);
end.