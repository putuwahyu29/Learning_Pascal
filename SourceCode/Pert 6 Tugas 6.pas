program hargabarang;
uses crt;
var
n,i : integer;
harga : longint;
begin
        clrscr;
        writeln('TABEL HARGA FOTOKOPI');
        writeln;
        writeln('|---------|--------|');
        writeln('|LEMBAR   |HARGA   |');
        writeln('|---------|--------|');
        for i:= 1 to 100 do
        begin
                harga := i * 125 ;
                writeln('|',i:9,'|',harga:8,'|');
        end;
        writeln('|---------|--------|');
        readln;
end.





