program jumlahderet;
uses crt;
var
jumlah : real;
n,x,k,tanda : integer;
begin
        clrscr;
        write('Masukkan Jumlah Suku Deret : ');
        readln(n);
        x := 1 ;
        tanda :=1;
        jumlah := 0;
        k := 1;
        while k <= n do
                begin
                        jumlah := jumlah + tanda*1/x ;
                        x := x + 2 ;
                        tanda := -1*tanda ;
                        n := n - 1 ;
                end;
        write('Jumlah deret : ',jumlah:0:2);
        readln;
end.
