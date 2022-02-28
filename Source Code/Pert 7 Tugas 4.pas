program segitigapascal;
uses crt;
var
        nilai,i,k,j,a: integer;
begin
        clrscr;
        write('Masukkan Nilai : ');
        readln(nilai);
        for i := 0 to nilai do
        begin
                for k := 0 to ((2*nilai)-(2*i)) do
                write(' ');
                for j := 0 to i do
                begin
                        if (j=0) or (i=j) then
                        a :=1
                        else
                        a := round(a*(i+1-j)/j);
                        write(a:4);
                end;
                writeln;
        end;
        readln;
end.