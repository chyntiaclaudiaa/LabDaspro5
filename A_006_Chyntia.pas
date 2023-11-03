program uts_1;
uses crt;
const 
    phi= 3.1416;
var 
    L,V,r : real;
    da,t : integer;
begin 
    clrscr;
    write('masukkan diameter alas (cm) : ');
    readln(da);
    write('masukkan tinggi (cm) : ');
    readln(t);
    if (da > 0 ) and (da < 32768) then 
    begin
        if (t > 0 ) and (t < 32768) then 
        begin
        r:= da/2 ;
        V := phi * r * r * t ;
        L:= ((2 * phi * r ) * (r + t));
        writeln('Volume = ',V:0:3);
        writeln('Luas Permukaan = ',L:0:4);
        end
    end
    else
    begin
        writeln('bilangan tidak tersedia');
    end;
    readln;
end.




