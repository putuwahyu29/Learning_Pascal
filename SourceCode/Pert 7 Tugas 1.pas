program bariskolom;
uses crt;
var
i,j,baris : integer;
begin
    clrscr;
    write('Jumlah Baris = '); readln(baris);
    writeln;
    for i:=1 to baris do
        begin
                if i mod 2 <> 0 then
                        begin
                                for j := 0 to 9 do
                                write(j:3);
                                writeln;
                        end;
                if i mod 2 = 0 then
                        begin
                                for j := 9 downto 0 do
                                write(j:3);
                                writeln;
                        end;
        writeln;
        end;
    readkey
end.