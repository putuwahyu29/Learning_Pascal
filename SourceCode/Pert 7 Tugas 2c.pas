Program Contoh74; //persegi rata tengah
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
             if j <= n-i then write(' ':2)
             else
             begin
                write(kar:2);
                write(' ':2);
             end;
        writeln;
		end;
   readkey
end.