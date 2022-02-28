Program Contoh51;
uses crt;
var Nilai : integer;
    grade : char;
begin
    clrscr;
    writeln('Input nilai yang Anda dapatkan 0 s.d. 100');
    write('Nilai Anda = ');
    readln(Nilai);
    if (nilai<0) or (nilai>100) then writeln('Salah menginput nilai')
    else
    begin
        case Nilai of
        0..59:  grade:='D';
        60..69:  grade:='C';
        70..79:  grade:='B';
        80..100: grade:='A';
        end;
        writeln('Grade Anda', Grade );

        Case Grade of
        'D': writeln(' Kurang memuaskan');
        'C': writeln(' Cukup');
        'B': writeln(' Baik');
        'A': writeln(' Sangat Baik');
        end;
    end;
    readln
end.
