program air;
uses crt;
var
        suhu : integer;
begin
        clrscr;
        writeln('Program Cek Kondisi Air');
        write('Masukkan Suhu (Celcius) : ');
        readln(suhu);
        if (suhu <=0) then
                begin
                write('Kondisi Air : Beku')
                end
        else if (suhu<100) then
                begin
                write('Kondisi Air : Cair')
                end
        else
                begin
                write('Kondisi Air : Uap');
                end;
        readkey;
end.
