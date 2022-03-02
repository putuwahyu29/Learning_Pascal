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
                writeln(' No    NIM             Nama        Tugas    UTS    UAS    Prak    NA    Grade');
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
        writeln(' No    NIM             Nama        Tugas    UTS    UAS    Prak    NA    Grade');
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
    writeln(' No    NIM             Nama        Tugas    UTS    UAS    Prak    NA    Grade');
    Writeln('-----------------------------------------------------------------------------');
    write(1:3); with list[data] do writeln(NIM:10,Nama:20,Tugas:7,UTS:7,UAS:7,Praktikum:7,NA:8:1,Grade:5);
end;


procedure rerata(list:kelas;n:integer);
var     i:integer;
        nilai,rerata :real;
begin
    for i := 1 to n do
        nilai := nilai + list[i].NA ;
     rerata := nilai/n ;
     writeln('Nilai Rata-rata : ',rerata:0:2);
end;

var Alpro:kelas;
    n:integer;
    pil :1..6;
    opsi :(y,t);

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
    writeln('6. Keluar');
    write('Masukkan Pilihan (1-6): ');readln(pil);
    case pil of
        1 : begin
                write('Jumlah Mahasiswa: '); readln(n);
                InputData(Alpro,n);
            end;
        2 : output(Alpro,n);
        3 : nilaiterbesar(Alpro,n);
        4 : nilaiterkecil(Alpro,n);
        5 : rerata(Alpro,n);
    end;
    write('Ingin memilih menu lagi ?(Y/T) ');readln(opsi);
    if opsi=Y then goto mulai;
end.
