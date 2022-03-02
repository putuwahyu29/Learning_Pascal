program matkul;
uses crt;
var
        hari :string[6];
begin
        clrscr;
        writeln('Program Mata Kuliah');
        write('Nama Hari : ');
        readln(hari);
        if (hari='Senin') or (hari='senin') or (hari='SENIN') then
                begin
                        write('Mata Kuliah : Algoritma dan Pemrograman')
                end
        else if (hari='Selasa') or (hari='selasa') or (hari='SELASA') then
                begin
                        write('Mata Kuliah : Kalkulus')
                end
        else if (hari='Rabu') or (hari='rabu') or (hari='RABU') then
                begin
                        write('Mata Kuliah : Bahasa Indonesia')
                end
        else if (hari='Kamis') or (hari='kamis') or (hari='KAMIS') then
                begin
                        write('Mata Kuliah : Pengantar Teknik Informatika')
                end
        else if (hari='Jumat') or (hari='jumat') or (hari='JUMAT') then
                begin
                        write('Mata Kuliah : Bahasa Inggris')
                end
        else if (hari='Sabtu') or (hari='sabtu') or (hari='SABTU') then
                begin
                        write('Mata Kuliah : Basis Data')
                end
        else
                begin
                        write('Nama Hari Tidak Ditemukan');
                end;
        readkey;
end.

