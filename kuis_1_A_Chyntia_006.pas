program biodata_anda;
uses crt;
var 
    Nama,NIM,Alamat,Kom:string;

begin
    write('Masukkan Nama Anda: ');
    readln(nama);
    write('Masukkan NIM Anda: ');
    readln(NIM);
    write('Masukkan Kom Anda: ');
    readln(kom);
    write('Masukkan Alamat Anda: ');
    readln(alamat);
    writeln('======================================');
    write('Hallo, Nama saya ',nama,', NIM saya ',NIM,', saya di Kom ',kom,', Alamat saya di ',alamat,'. Salam kenal semua!');
end.