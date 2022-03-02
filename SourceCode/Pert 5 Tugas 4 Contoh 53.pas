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
            0..59   : writeln(' Anda tidak lulus');
            60..100 : 
                begin
                    write('Anda lulus ');
                    case nilai of
                    60..74: writeln('dengan nilai cukup');
                    75..89: writeln('dengan nilai baik');
                    else writeln('dengan nilai sangat baik');
                    end;
                end;   
            end;
        end;
    readln;
end.