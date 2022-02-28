Program Contoh53;
uses crt;
var
    Nilai : integer;

begin
    clrscr;
    writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
    write('Nilai Anda = ');
    readln(Nilai);
    if (nilai<=59) then writeln(' Anda tidak lulus')
    else if (nilai<=100) then
        begin
            write('Anda lulus ');
                if (nilai<=74) then writeln('dengan nilai cukup')
                else if (nilai<=89) then writeln('dengan nilai baik')
                else writeln('dengan nilai sangat baik')
        end
    else writeln(' Anda salah input nilai');

    readln;
end.
