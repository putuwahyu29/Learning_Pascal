program bonuspegawai;
uses crt;
var
        gol,lmkrj,umur :byte;
begin
        clrscr;
        writeln('Program Bonus Pegawai');
        writeln('Golongan Pegawai ?');
        writeln('1. Pegawai Staf');
        writeln('2. Pegawai Non Staf');
        write('Masukkan Pilihan(1/2) : ');
        readln(gol);
        if (gol=1) then
                begin
                        write('Lama Bekerja (Tahun) : ');
                        readln(lmkrj);
                        write('Umur Pegawai (Tahun) : ');
                        readln(umur);
                        if (lmkrj>=5) and (umur>=50) then
                                begin
                                        writeln('Bonus Pegawai : Rp1.000.000')
                                end
                        else
                                begin
                                        writeln('Bonus Pegawai : Rp500.000')
                                end
                end
        else if (gol=2) then
                begin
                        write('Lama Bekerja (Tahun) : ');
                        readln(lmkrj);
                        write('Umur Pegawai (Tahun) : ');
                        readln(umur);
                        if (lmkrj>=5) and (umur>=50) then
                                begin
                                        writeln('Bonus Pegawai : Rp400.000')
                                end
                        else
                                begin
                                        writeln('Bonus Pegawai : Rp250.000')
                                end
                end
        else
                begin
                        writeln('Pilihan Tidak Ada');
                end;
        readkey;
end.

