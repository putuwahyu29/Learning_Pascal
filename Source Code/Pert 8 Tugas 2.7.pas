Program Contoh75;//Fungsi Tanpa Parameter
uses crt;
var
   i,j,m,n:integer;
   kar:char;
Function Panggil:string;
begin
   for i:=1 to m do
   begin
      for j:=1 to n do
      if (i=1) or (i=m) or (j=1) or (j=n) then
         write(kar:2)
      else write(' ':2);
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