Program Contoh74;//Prosedur dengan Parameter
uses crt;
var
   i,j,m,n:integer;
   kar:char;
Procedure Panggil(a,b:integer);
begin
   for i:=1 to a do
   begin
      for j:=1 to b do
         write(kar:2);
      writeln;
   end;
end;
begin
   clrscr;
   Write('Karakter yang digunakan: ');
   readln(kar);
   writeln('Ukuran persegi panjang yang diinginkan');
   write('Panjang= ');readln(m);
   write('Lebar=   ');readln(n);
   panggil(m,n);
   readkey
end.