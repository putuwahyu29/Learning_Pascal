Program Contoh74;//Fungsi Tanpa Parameter
uses crt;
var
   i,j,m,n:integer;
   kar:char;
Function Panggil:String;
begin
   for i:=1 to m do
   begin
      for j:=1 to n do
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
   panggil;
   readkey
end.