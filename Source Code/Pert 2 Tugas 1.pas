program konversisuhu ;
uses crt;
var
        cel, fah : real;
begin
        clrscr;
        writeln('MENCARI KONVERSI SUHU');
        writeln('=====================');
        write('Input derjad Celsius = ');
        readln(Cel);
        fah := 9/5 * Cel + 32 ;
        write('Derjad Fahrenheit = ',fah:0:1);
        readkey;
end.
