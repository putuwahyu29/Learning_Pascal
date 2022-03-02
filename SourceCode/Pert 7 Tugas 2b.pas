Program Contoh74; //segitiga rata kanan
uses crt;
var
   i,j,m,n:integer;
   kar:char;
begin
        Write('Karakter yang digunakan: ');
        readln(kar);
        writeln('Ukuran persegi panjang yang diinginkan');
        write('Panjang= ');readln(m);
        write('Lebar=   ');readln(n);
        for i:=1 to m do
        begin
        for j:=1 to n do
             if j<=n-i then write(' ':2)
             else write(kar:2);
        writeln;
   end;
   readkey
end.