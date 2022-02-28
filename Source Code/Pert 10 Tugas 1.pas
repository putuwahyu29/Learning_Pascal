program bilprima;
uses Crt;
var
  prima : array[1..1000] of integer;
  i,j,a,b,n : integer;
begin
  clrScr;
  writeln('Bilangan Prima Antara ');
  write('Awal : ');readln(a);
  write('Akhir : ');readln(b);
  if a=1 then a:=2;
  write('Deret Bilangan Prima : ');
  for i := a to b do
  begin
    prima[i]:=i;
    for j:= 2 to i-1 do
    begin
      if (i mod j) = 0 then prima[i]:=0;
    end;
    if prima[i] <> 0 Then
    begin
        n := n+1;
        write(Prima[i],' ');
    end;
  end;
  writeln;
  if a=2 then a:=1;
  write('Jumlah Bilangan Prima : ',n);
  readkey
end.
