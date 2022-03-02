Program Contoh51;
uses crt;
var Nilai : integer;
    grade : char;
begin
    clrscr;
    writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
    write('Nilai Anda = ');
    readln(Nilai);

    if  (nilai<=59) then grade:='D'
    else if  (nilai<=69) then grade:='C'
    else if  (nilai<=79) then grade:='B'
    else if  (nilai<=100) then grade:='A';

    writeln('Grade Anda ', Grade );

    if grade = 'D' then writeln('Kurang memuaskan')
    else if grade = 'C' then writeln('Cukup')
    else if grade = 'B' then writeln('Baik')
    else if grade = 'A' then writeln('Sangat Baik');

readln
end.
