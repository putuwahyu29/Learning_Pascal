program ratarepeat;
uses crt;
var
a,data,n,jumlah : integer;
begin
        clrscr;
        write('Masukkan jumlah bilangan N : ');
        readln(n);
        a := 1;
        jumlah := 0;
        repeat
                begin
                        write('Masukkan bilangan ke-',a,' : ');
                        readln(data);
			        if (data mod 2 = 0) then
                                        begin
					        jumlah := jumlah + data;
					end
					else jumlah := jumlah;
                        a := a + 1;
                end;
        until a>n ;
        writeln('Jumlah Bilangan Genap = ',jumlah);
        readln;
end.


