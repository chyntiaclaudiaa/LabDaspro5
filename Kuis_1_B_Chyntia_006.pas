program alamat_anda;
uses crt;
var 
    jalan, No, kota, kode_pos: string;

begin
    write('Masukkan Jalan Anda: ');
    readln(jalan);
    write('Masukkan No Jalan Anda: ');
    readln(No);
    write('Masukkan Kota Anda: ');
    readln(kota);
    write('Masukkan Kode pos Anda: ');
    readln(kode_pos);
    writeln('======================================');
    write('Alamat: Jalan ', jalan, ' No. ', No, ' ' ,kota,' ', kode_pos);
    readln;
end.