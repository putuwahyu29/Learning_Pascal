program desimalkebiner;
uses crt;
procedure biner(n:integer);
begin
    if n=1 then write('1')
    else
    begin
        biner(trunc(n/2));
        write(n mod 2);
    end;
end;

var n:integer;
begin
    clrscr;
    writeln('Konversi Bilangan Desimal Ke Bilangan Biner');
    write('Bilangan Desimal : ');readln(n);
    write('Bilangan Biner   : ');biner(n);
    readkey
end.
