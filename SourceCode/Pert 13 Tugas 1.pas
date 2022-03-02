program Pencarian;
uses crt;
Type Larik = array[1..100] of integer;

var A: larik;
    i,n,x : integer;
    low,high,mid:integer;
    bin:boolean;

Function BinarySearch1(A:Larik; N:integer; X:integer):integer;
begin
    mid:= (low + high) div 2 ;
    if A[mid] = x then bin := true;
    if (not bin) and (low<high) then
        if A[mid] < x then
            begin
             low := mid+1;
             BinarySearch1(A,N,X);
            end
        else
            begin
             high:=mid-1;
             BinarySearch1(A,N,X);
            end;
end;

Function BinarySearch(A:Larik; N:integer; X:integer):integer;
begin
    low:=1;
    high:= N;
    bin:=false;
    BinarySearch1(A,n,x);
    if bin = true then BinarySearch:= mid {ditemukan}
    else BinarySearch := 0; {tidak ditemukan}
end;

begin
    clrscr;
    n:=10;
    x:=500;
    for i :=1 to n do A[i]:= i*100;
    writeln(BinarySearch(A,n,x));
    readkey
end.
