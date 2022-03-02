program mahasiswa;
uses crt;
var
        n,i,usia : integer ;
        usia17,usia18,usia19,usia20,lainnya : integer ;
begin
        clrscr;
        write('Masukkan Jumlah Mahasiswa : ');
        readln(n); writeln;
        i := 1;
                        while i<=n do
                                begin
                                         write('Masukkan usia mahasiswa ke-',i,' : ');
                                         readln(usia);
                                         case usia of
                                                17 : usia17 := usia17 + 1;
                                                18 : usia18 := usia18 + 1;
                                                19 : usia19 := usia19 + 1;
                                                20 : usia20 := usia20 + 1;
                                                else
                                                lainnya := lainnya + 1;
                                        end;
                                i := i +1 ;
                                end;
        writeln;
        writeln('Jumlah mahasiswa berusia 17 tahun = ', usia17);
        writeln('Jumlah mahasiswa berusia 18 tahun = ', usia18);
        writeln('Jumlah mahasiswa berusia 19 tahun = ', usia19);
        writeln('Jumlah mahasiswa berusia 20 tahun = ', usia20);
        writeln('Jumlah mahasiswa selain itu       = ', lainnya);
        readkey;
end.



