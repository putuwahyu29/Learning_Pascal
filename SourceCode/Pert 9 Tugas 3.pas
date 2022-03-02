program kabataku;
uses crt;
var
        pil : 1..5;
        hasil,m,n:  real;
Function tambah(a,b:real):real;
begin
        hasil := a+b;
end;
Function kurang(a,b:real):real;
begin
        hasil := a-b;
end;
Function bagi(a,b:real):real;
begin
        hasil := a/b;
end;
Function kali(a,b:real):real;
begin
        hasil := a*b;
end;
Procedure keluar;
begin
        writeln('Terima Kasih');
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
        write('Pilihan Anda(1/2/3/4/5): '); readln(pil);
        if pil = 5 then write('Terima Kasih')
        else begin
                write('Masukkan angka pertama : '); readln(m);
                write('Masukkan angka kedua   : '); readln(n);
        end;
        case pil of
                1 : begin
						tambah(m,n);
						writeln('Hasil dari ',m:0:2,' + ',n:0:2,' = ',hasil:0:2);
					end;
                2 : begin
						kurang(m,n);
						writeln('Hasil dari ',m:0:2,' - ',n:0:2,' = ',hasil:0:2);
					end;
                3 : begin
						bagi(m,n);
						writeln('Hasil dari ',m:0:2,' : ',n:0:2,' = ',hasil:0:2);
					end;
                4 : begin
						kali(m,n);
						writeln('Hasil dari ',m:0:2,' x ',n:0:2,' = ',hasil:0:2);
					end;
        end;
        readln
end.

