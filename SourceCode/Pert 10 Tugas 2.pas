program operasimatriks;
uses crt;
type matriks = array [1..100,1..100] of integer;
var
    a,b,c,adj : matriks;
    i,j,k,x,y,z,det : integer;
    pil : 1..4;

procedure inputmatriks1;
begin
    writeln('Ukuran Matriks A');
    write('Baris : '); readln(x);
    write('Kolom : '); readln(y);
    writeln;
    writeln('Masukan Nilai Matriks A');
    for i:=1 to x do
        for j:=1 to y do
        begin
                write('A[',i,',',j,'] : ');
                readln(a[i,j]);
        end;
    writeln;
    writeln('Matriks A');
    for i:= 1 to x do
        begin
                for j:= 1 to y do
                begin
                        write(a[i,j]:3,' ');
                end;
                writeln;
        end;
    writeln;
end;

procedure inputmatriks2;
begin
    writeln('Ukuran Matriks B');
    writeln('Baris : ',y);
    write('Kolom : '); readln(z);
    writeln;
    writeln('Masukan Nilai Matriks B');
    for i:=1 to y do
        for j:=1 to z do
        begin
                write('B[',i,',',j,'] : ');
                readln(b[i,j]);
        end;
    writeln;
    writeln('Matriks B');
    for i:= 1 to y do
        begin
                for j:= 1 to z do
                begin
                        write(b[i,j]:3,' ');
                end;
                writeln;
        end;
end;

procedure perkalian;
begin
     for i:=1 to x do
        for j:=1 to z do
                for k:=1 to y do
                        c[i,j] := c[i,j] + a[i,k]*b[k,j];
     writeln;
     writeln('Hasil Perkalian Matriks A dan B');
     for i:=1 to x do
     begin
        for j:=1 to z do
                write(c[i,j]:3,' ');
        writeln;
     end;
end;


procedure determinan;
begin
    writeln('Hitung Determinan Matriks A ');
    if (x=2) and (y=2) then
      det:=(a[1,1]*a[2,2]) - (a[1,2]*a[2,1])
    else if (x=3) and (y=3) then
     det:= (a[1,1]*a[2,2]*a[3,3]) + (a[1,2]*a[2,3]*a[3,1]) + (a[1,3]*a[2,1]*a[3,2]) - (a[1,3]*a[2,2]*a[3,1]) - (a[1,1]*a[2,3]*a[3,2]) - (a[1,2]*a[2,1]*a[3,3])
    else writeln('Tidak dapat menghitung');
    if ((x=2) and (y=2) or (x=3) and (y=3)) then writeln('Determinan Matriks A = ',det);
end;

procedure transpose;
begin
    writeln('Transpose Matriks A  ');
    for i:= 1 to y do
        begin
                for j:= 1 to x do
                begin
                        write(a[j,i]:3,' ');
                end;
                writeln;
        end;
end;

procedure invers;
begin
   if (x=2) and (y=2) then
    begin
     for i:= 1 to 2 do
     begin
        for j:= 1 to 2 do
        begin
                adj[1,1]:=   1 * a[2,2];
                adj[1,2]:=  -1 * a[1,2];
                adj[2,1]:=  -1 * a[2,1];
                adj[2,2]:=   1 * a[1,1];
        end;
     end;
     determinan;
     writeln;
     writeln('Invers Matriks A  ');
     if det=0 then writeln('Tidak Memiliki Invers')
     else
     for i:= 1 to 2 do
        begin
                for j:= 1 to 2 do
                write(adj[i,j]/det:7:1,' ');
                writeln;
        end;
     end
     else writeln('Tidak dapat menghitung invers');
end;

//program utama
begin
        clrscr;
        writeln('Pilih Operasi Matriks');
        writeln('1. Perkalian Matriks');
        writeln('2. Determinan Matriks');
        writeln('3. Transpose Matriks');
        writeln('4. Invers Matriks');
        write('Pilihan(1/2/3/4) : '); readln(pil);
        writeln;
        case pil of
                1 : begin
                        inputmatriks1;
                        inputmatriks2;
                        perkalian;
                    end;
                2 : begin
                        inputmatriks1;
                        determinan;
                    end;
                3 : begin
                        inputmatriks1;
                        transpose;
                    end;

                4 : begin
                        inputmatriks1;
                        invers;
                    end;
        end;
    readln;
end.


