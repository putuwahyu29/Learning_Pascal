program penjum1;
uses crt;
var
        a,b,hasil:real;
function jumlah(x,y:real;var jumlah:real):real;
begin
        jumlah := x + y ;
end;

begin
        clrscr;
        write('Masukkan Bilangan Pertama : ');
        readln(a);
        write('Masukkan Bilangan Kedua : ');
        readln(b);
        write('Hasil Penjumlahan ',a:0:2,' + ',b:0:2,' = ',jumlah(a,b,hasil):0:2);
        readkey
end.