Program Contoh75;//Fungsi dengan Parameter
uses crt;
var
   i,j,m,n:integer;
   kar:char;
Function Panggil(a,b:integer):string;
begin
   for i:=1 to a do
   begin
      for j:=1 to b do
      if (i=1) or (i=a) or (j=1) or (j=b) then
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
   panggil(m,n);
   readkey
end.