program luaslingkaran;
uses crt;
var
        jr,hsl:real;
begin
        clrscr;
        writeln('Mencari Luas Lingkaran');
        writeln('======================');
        write('Input Panjang jari-jari (cm) = ');
        read(jr);
        hsl := 22/7 * jr * jr ;
        write('Luas adalah (cm2) = ',hsl:0:1);
        readkey;
end.
