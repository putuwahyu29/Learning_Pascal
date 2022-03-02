program segitigapascal;
uses crt;
type larik = array[1..100,1..100] of integer;
var  i,n,j :integer;
     data:larik;

procedure segpas(var data:larik; n,i,j:integer);
begin
    if (i= 1) then
    begin
        data[1,1]:=1;
        segpas(data,n,i+1,1);
    end
    else if i<=n then
    begin
        if (j=1) then
        begin
            data[i,j]:=1;
            segpas(data,n,i,j+1);
        end
        else if (j=n) then
        begin
            data[i,j]:=1;
            segpas(data,n,i+1,1);
        end
        else
        begin
            data[i,j]:=data[i-1,j-1]+data[i-1,j];
            segpas(data,n,i,j+1)
        end;
    end;
end;

begin
    clrscr;
    writeln('Program menampilkan segitiga pascal');
    write('Masukkan Tinggi Segitiga : '); readln(n);
    segpas(data,n,1,1);
    for i:=1 to n do
    begin
        for j:= n downto i do
            write(' ');
        for j:=1 to i do
            write(data[i,j],' ');
        writeln;
    end;
    readkey;
end.

