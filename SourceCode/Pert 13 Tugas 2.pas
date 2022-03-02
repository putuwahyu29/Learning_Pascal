Program NilaiAlpro;
uses crt;

type
    tabel=record
        NIM:string[9];
        Nama:string[20];
        Tugas,UTS,UAS,Praktikum:byte;
        NA:real;
        Grade:char;
    end;
    kelas=array[1..40]of tabel;

function NAkhir(a,b,c,d:integer):real;
begin
        Nakhir:=(a+3*(b+c+d))/10;
end;

function grading(a:real):char;
var hasil:char;
begin
        case trunc(a) of
             0..19  : hasil:='E';
            20..39  : hasil:='D';
            40..59  : hasil:='C';
            60..79  : hasil:='B';
            80..100 : hasil:='A';
        end;
        grading:=hasil;
end;

procedure InputData(var list:kelas;n:integer);
var i:integer;
begin
        for i:=1 to n do
        begin
            writeln('Mahasiswa ke-',i,': ');
            with list[i] do
            begin
                write('NIM       : ');readln(NIM);
                write('Nama      : ');readln(Nama);
                write('Tugas     : ');readln(Tugas);
                write('UTS       : ');readln(UTS);
                write('UAS       : ');readln(UAS);
                write('Praktikum : ');readln(Praktikum);
                NA:=Nakhir(Tugas,UTS,UAS,Praktikum);
                Grade:=grading(NA);
                nama:= upcase(nama);
            end;
        end;
end;

procedure output(list:kelas;n:integer);
    var i:integer;
    begin
    writeln('   DAFTAR NILAI MATA KULIAH ALGORITMA DAN PEMROGRAMAN ');
    if n=0 then writeln('Belum ada data, silahkan input data terlebih dahulu')
    else
        begin
                Writeln('-----------------------------------------------------------------------------');
                writeln(' NO    NIM             NAMA        TUGAS    UTS    UAS    PRAK    NA    Grade');
                Writeln('-----------------------------------------------------------------------------');
                for i:=1 to n do
                begin
                        write(i:3);
                        with list[i] do write(NIM:10,Nama:20,Tugas:7,UTS:7,UAS:7,Praktikum:7,NA:8:1,Grade:5);
                        writeln;
                end;
        end;
end;

procedure nilaiterbesar(list:kelas;n:integer);
    var i,maks,data:integer;
        pilihan : (a,b,c);
        kategori :(UTS,UAS,AKHIR);
    begin
    maks:=0;
    write('Masukkan Pilihan (a/b/c) : ');readln(pilihan);
    case pilihan of
        a : begin
                kategori := UTS;
                for i := 1 to n do
                begin
                        if maks<list[i].UTS then
                        begin
                                data:=i;
                                maks:=list[i].UTS;
                        end;
                end;
            end;
        b : begin
                kategori := UAS;
                for i := 1 to n do
                begin
                        if maks<list[i].UAS then
                        begin
                                data:=i;
                                maks:=list[i].UAS;
                        end;
                end;
            end;
        c : begin
                kategori := AKHIR;
                for i := 1 to n do
                begin
                        if maks<list[i].NA then
                        begin
                                data:=i;
                                maks:=trunc(list[i].NA);
                        end;
                end;
           end;
        end;
        writeln('    DAFTAR NILAI ',kategori,' MATA KULIAH ALGORITMA DAN PEMROGRAMAN TERBESAR ');
        Writeln('-----------------------------------------------------------------------------');
        writeln(' NO    NIM             NAMA        TUGAS    UTS    UAS    PRAK    NA    GRADE');
        Writeln('-----------------------------------------------------------------------------');
        write(1:3); with list[data] do writeln(NIM:10,Nama:20,Tugas:7,UTS:7,UAS:7,Praktikum:7,NA:8:1,Grade:5);

end;

procedure nilaiterkecil(list:kelas;n:integer);
var     i,min,data:integer;
        pilihan : (a,b,c);
        kategori :(UTS,UAS,AKHIR);
    begin
    min:=100;
    write('Masukkan Pilihan (a/b/c) : ');readln(pilihan);
    case pilihan of
        a : begin
                kategori := UTS;
                for i := 1 to n do
                begin
                        if min>list[i].UTS then
                        begin
                                data:=i;
                                min:=list[i].UTS;
                        end;
                end;
           end;
        b : begin
                kategori := UAS;
                for i := 1 to n do
                begin
                        if min>list[i].UAS then
                        begin
                                data:=i;
                                min:=list[i].UAS;
                        end;
                end;
            end;
        c : begin
                kategori :=AKHIR;
                for i := 1 to n do
                begin
                        if min>list[i].NA then
                        begin
                                data:=i;
                                min:=trunc(list[i].NA);
                        end;
                end;
             end;
        end;
    writeln('    DAFTAR NILAI ',kategori,' MATA KULIAH ALGORITMA DAN PEMROGRAMAN TERKECIL ');
    Writeln('-----------------------------------------------------------------------------');
    writeln(' NO    NIM             NAMA        TUGAS    UTS    UAS    PRAK    NA    GRADE');
    Writeln('-----------------------------------------------------------------------------');
    write(1:3); with list[data] do writeln(NIM:10,Nama:20,Tugas:7,UTS:7,UAS:7,Praktikum:7,NA:8:1,Grade:5);
end;


function rerata(list:kelas;n:integer):real;
var     i:integer;
        nilai:real;
begin
    for i := 1 to n do
        nilai := nilai + list[i].NA ;
     rerata := nilai/n ;
     writeln('Nilai Rata-rata : ',rerata:0:2);
end;

function carinilai(list:kelas;x:string;n:integer):integer;
    var i:integer;
    begin
        i:=1;
		while (i<n) and (list[i].nama<>upcase(x)) do i:= i + 1;
		if (list[i].nama<>upcase(x)) then
           begin
            carinilai:=0;
            writeln('Data Tidak Ditemukan!');
           end
        else
           begin
            carinilai:=i;
            writeln('Data Ditemukan! Nilai Alpro ',x);
            Writeln('-----------------------------------------------------------------------------');
            writeln('TUGAS    UTS    UAS    PRAK    NA    GRADE');
            Writeln('-----------------------------------------------------------------------------');
            with list[i] do writeln(TUGAS:6,UTS:7,UAS:7,PRAKTIKUM:7,NA:8:1,GRADE:5);
           end;
    end;

var Alpro:kelas;
    n:integer;
    pil :1..7;
    opsi :(y,t);
    x : string;

label  mulai;

begin
    clrscr;
    mulai :
    writeln('Selamat Datang di Program entri Mahaiswa');
    writeln('1. Input Data');
    writeln('2. Tampilkan Data');
    writeln('3. Nilai Alpro Terbesar');
    writeln('   a. Nilai UTS');
    writeln('   b. Nilai UAS');
    writeln('   c. Nilai Akhir');
    writeln('4. Nilai Alpro Terkecil');
    writeln('   a. Nilai UTS');
    writeln('   b. Nilai UAS');
    writeln('   c. Nilai Akhir');
    writeln('5. Rata-rata Nilai Alpro');
    writeln('6. Cari Nilai Mahasiswa');
    writeln('7. Keluar');
    write('Masukkan Pilihan (1-7): ');readln(pil);
    case pil of
        1 : begin
                write('Jumlah Mahasiswa: '); readln(n);
                InputData(Alpro,n);
            end;
        2 : output(Alpro,n);
        3 : nilaiterbesar(Alpro,n);
        4 : nilaiterkecil(Alpro,n);
        5 : rerata(Alpro,n);
	6 : begin
	        write('Masukkan nama mahasiswa: '); readln(x);
		carinilai(Alpro,x,n);
	    end;
    end;
    if (pil <> 7) then
    begin
        write('Ingin memilih menu lagi ?(Y/T) ');readln(opsi);
        if (opsi=Y) then goto mulai
    end;
end.
