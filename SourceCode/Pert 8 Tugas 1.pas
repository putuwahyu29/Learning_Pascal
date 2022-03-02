Program Contoh81;
uses crt;
type Hari1pekan =(Ahad,Senin,Selasa,Rabu,Kamis,Jumat,Sabtu);
     haribulan=1..31;

var i,awalbulan:hari1pekan;
    j,tglmaks:haribulan;
    x,y,k,l,lebar,tahun:integer;
    Bulan : (Januari,Februari,Maret,April,Mei,Juni,Juli,Agustus,September,Oktober,November,Desember);

begin
    clrscr;
    write('Hari pertama awal bulan: ');
    readln(awalbulan);
    write('Masukkan Tahun: ');
    readln(tahun);

    lebar:=7;
    for i:=Ahad to sabtu do write(i:lebar);

    y:=5;
    x:=ord(awalbulan);
        for bulan := Januari to Desember do
        begin
        writeln;
          case bulan of
          Januari,Maret,Mei,Juli,Agustus,Oktober,Desember       : tglmaks:=31;
          Februari                                              :    begin
                                                                        if tahun mod 4 = 0 then tglmaks :=29
                                                                        else tglmaks :=28;
                                                                      end;
          April,Juni,September,November                         : tglmaks :=30;
        end;

        writeln(bulan);

        if bulan = januari then x:= ord(awalbulan)
        else x:=x;
    for j:=1 to tglmaks do
    begin
        if x=7 then
       begin
            x:=0;
            y:=y+1;
        end;
        gotoxy(lebar*x+1,y+ord(bulan));write(j:3);
        x:=x+1;

    end;
        end;
        writeln;
    readln
end.
