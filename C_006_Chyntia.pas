program uts_3;
uses crt;
var
  n,x,m: integer;
  buff:string;
  es,ep,ek,tes,tep,tek,te: integer;

begin
    clrscr;
    write('Jumlah kabel yang digunakan Fanny: ');
    readln(n);
    write('Jumlah serangan terhadap musuh: ');
    readln(x);
    write('Jumlah musuh yang terkena fanny: ');
    readln(m);
    write('Apakah Fanny mendapatkan buff (true/false)? ');
    readln(buff);

    es := 15;
    ep := 8;
    ek := n;

    if (buff='true') then
    begin
        es := es div 2;
    end
    else 
        es:=es;

    tes := es * x;
    tep := ep * x;
    tek := ek;

    te := tek + tes - tep;

    writeln('Total energi yang digunakan oleh Fanny adalah: ', te);
    readln;
end.