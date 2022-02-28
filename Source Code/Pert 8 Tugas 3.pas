program kabataku;
uses crt;
var
        pil : 1..5;
        hasil:  real;
        m,n :  integer;
Function tambah(a,b:integer):integer;
begin
        hasil := a+b;
end;
Function kurang(a,b:integer):integer;
begin
        hasil := a-b;
end;
Function bagi(a,b:integer):integer;
begin
        hasil := a/b;
end;
Function kali(a,b:integer):integer;
begin
        hasil := a*b;
end;

begin
        clrscr;
        writeln('Selamat datang di Kalkulator Sederhana');
        writeln('Silahkan pilih menu berikut:');
        writeln('  1. Penjumlahan');
        writeln('  2. Pengurangan');
        writeln('  3. Perkalian');
        writeln('  4. Pembagian');
        writeln('  5. Keluar');
        write('Pilihan Anda: '); readln(pil);
        write('Masukkan angka pertama : '); readln(m);
        write('Masukkan angka kedua   : '); readln(n);
        case pil of
                1 : tambah(m,n);
                2 : kurang(m,n);
                3 : bagi(m,n);
                4 : kali(m,n);
                5 : writeln('Terima Kasih');
        end;
        writeln('Hasil sama dengan ',hasil:0:2);
        readln
end.

