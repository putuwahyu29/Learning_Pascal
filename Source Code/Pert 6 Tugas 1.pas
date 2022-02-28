program cetak;
uses crt;
var
        n,angka,jumlah : integer;
begin
        clrscr;
        write('Masukkan Angka : ');
        readln(angka);
        n := 1 ;
        jumlah := 0;
        while n<=angka do
                begin
                     jumlah := jumlah + n;
                     n := n + 1;
                end;
        writeln('Jumlah Angka yaitu : ',jumlah);
        readln;
end.
