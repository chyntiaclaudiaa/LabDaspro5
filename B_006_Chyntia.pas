program uts_2;
uses crt;
var
    n, i, jumlah, hasil: integer;
begin
    clrscr;
    write('Masukkan batasan bilangan (1-128) : ');
    readln(n);
    if (n >= 1) and (n <= 128) then
    begin
        jumlah := 0; 
        hasil := 0; 
        for i := n downto 1 do
        begin
        if (i mod 2 = 1) and (i mod 3 = 0) then
        begin
            write(i, ' ');
            jumlah := jumlah + 1; 
            hasil := hasil + i; 
        end;
        end;
        writeln;
        writeln('banyak bilangan : ', jumlah);
        writeln('Jumlah keseluruhan : ', hasil);
    end
    else
        writeln('bilangan anda tidak tersedia');
    readln;
end.