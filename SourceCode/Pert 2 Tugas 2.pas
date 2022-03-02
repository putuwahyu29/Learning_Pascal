program hargabayar;
uses crt;
var
        jml, hrg : longint;
        pjk, tot : real;
begin
        clrscr;
        writeln('Menentukan Harga Bayar');
        writeln('======================');
        write('Jumlah barang = ');
        read(jml);
        write('Harga satuan Rp. = ');
        read(hrg);
        write('Pajak Rp. = ');
        read(pjk);
        tot := jml * hrg + pjk ;
        write('Harga Bayar Rp. = ',tot:0:0);
        readkey;
end.

