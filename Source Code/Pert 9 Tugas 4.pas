program kombinatorial;
uses crt;
var
        i,n,r:integer;
        a,b,fak,kombi,permut : real;
        pil :1..3;

Function faktorial(n:integer):integer;
begin
        fak:=1;
        for i :=1 to n do
                fak :=fak*i;
end;

Function permutasi(n,r:integer):integer;
begin
        faktorial(n);   a :=fak;
        faktorial(n-r); b := fak;
        permut := a/b ;
end;

Function kombinasi(n,r:integer):integer;
begin
        permutasi(n,r);  a:=permut;
        faktorial(r); b:=fak;
        kombi := a/b;
end;

begin
        clrscr;
        writeln('Program Hitung Faktorial-Permutasi-Kombinasi');
        writeln(' 1. Faktorial');
        writeln(' 2. Permutasi');
        writeln(' 3. Kombinasi');
        write('Masukkan Pilihan (1/2/3) : '); readln(pil);
        writeln;
        write('Masukkan n = ');readln(n);
        if pil <> 1 then
                begin
                        write('Masukkan r = ');
                        readln(r);
                end;
        case pil of
                1 : begin
                        faktorial(n);
                        write('Hasil dari ',n,'! = ',fak:0:0);
                    end;
                2 : begin
                        permutasi(n,r);
                        write('Hasil dari P(',n,',',r,') = ',permut:0:0);
                    end;
                3 : begin
                        kombinasi(n,r);
                        write('Hasil dari C(',n,',',r,') = ',kombi:0:0);
                    end;
        end;
        readkey
end.
