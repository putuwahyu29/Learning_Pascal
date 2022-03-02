program anak_ayam;
uses crt;
var
n,a,b : integer ;
begin
        clrscr;
        write('Masukkan Jumlah Anak Ayam : ');
        readln(n);
        writeln('Anak Ayam Turun ',n);
        a := 1;
        while a < n do
                begin
                        write('Anak Ayam Turun ',n);
                        n :=  n - 1 ;
                        b := n ;
                        writeln(', mati satu tinggal ',b);
                end;
        if n=1 then  writeln('Anak Ayam Turun 1, mati satu tinggal induknya');
                readln;
        end.
