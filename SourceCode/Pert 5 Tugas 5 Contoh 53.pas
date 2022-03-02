Program Contoh53;
uses crt;
var
    Nilai : integer;

begin
    clrscr;
    writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
    write('Nilai Anda = ');
    readln(Nilai);
    if (nilai<0) or (nilai>100) then writeln('Salah menginput nilai')
    else
        begin
            case nilai of
            0..59 : writeln(' Anda tidak lulus');
            60..74: writeln('Anda lulus dengan nilai cukup');
            75..89: writeln('Anda lulus dengan nilai baik');
            else writeln('Anda lulus dengan nilai sangat baik');  
            end;
        end;
    readln;
end.