program ratarepeat;
uses crt;
var
a,data,n,jumlah : integer;
rataan : real;
begin
        clrscr;
        write('Masukkan jumlah bilangan N : ');
        readln(n);
        a := 1;
        jumlah := 0;
        repeat
                begin
                        write('Masukkan bilangan ke-',a,' : ');
                        readln(data);
                        jumlah := jumlah + data;
                        a := a + 1;
                end;
        until a>n ;
        rataan := jumlah/n ;
        writeln('Rata-rata = ',rataan:0:2);
        readln;
end.


