Program Cetak_KHS;
uses
  crt, SysUtils;

type
  mahasiswa = record
    nama: string;
    nim: string[9];
    hnilai: string[2];
    tnilai: real;
    ip: real;
  end;

  matkul = record
    namkul: string;
    sks: byte;
  end;

var
  f: textfile;
  filename: string;
  i, j, banyak_matkul: integer;
  var_mahasiswa: mahasiswa;
  var_matkul: array [1..20] of matkul;
  total_sks: integer;
  nilai_matkul: array [1..20] of string;

procedure garis_display;
begin
  writeln(f, '=================');
end;

procedure garis;
begin
  writeln('=================');
end;

procedure garis2_display;
begin
  writeln(f, '|==========================================|');
end;

function KonversiNilai(hnilai: string): real;
begin
  case hnilai of
    'A': KonversiNilai := 4.0;
    'B+': KonversiNilai := 3.5;
    'B': KonversiNilai := 3.0;
    'C+': KonversiNilai := 2.5;
    'C': KonversiNilai := 2.0;
    'D': KonversiNilai := 1.0;
    'E': KonversiNilai := 0.0;
  else
    begin
      writeln('Error: nilai tidak valid');
      KonversiNilai := 0.0;
    end;
  end;
end;

begin
  clrscr;
  write('Banyak Matkul: ');
  readln(banyak_matkul);
  total_sks := 0;
  
  for i := 1 to banyak_matkul do
  begin
    clrscr;
    with var_matkul[i] do
    begin
      writeln('Matkul [', i, ']');
      garis;
      write('Nama Matkul : ');
      readln(namkul);
      write('SKS         : ');
      readln(sks);
      total_sks := total_sks + sks;
    end;
  end;

  with var_mahasiswa do
  begin
    clrscr;
    writeln('Mahasiswa');
    garis;
    writeln;
    write('Nama : ');
    readln(nama);
    write('NIM  : ');
    readln(nim);
  end;

  var_mahasiswa.tnilai := 0;

  for j := 1 to banyak_matkul do
  begin
    write('Nilai ', var_matkul[j].namkul, ': ');
    readln(nilai_matkul[j]);
    var_mahasiswa.tnilai := var_mahasiswa.tnilai + (KonversiNilai(nilai_matkul[j]) * var_matkul[j].sks);
  end;

  var_mahasiswa.ip := var_mahasiswa.tnilai / total_sks;

  filename := 'KHS_' + var_mahasiswa.nim + '_' + var_mahasiswa.nama + '.txt';
  Assign(f, filename);

  rewrite(f);

  writeln(f, 'Kartu Hasil Studi');
  garis_display;
  writeln(f);

  with var_mahasiswa do
  begin
    writeln(f, 'Nama   : ', nama);
    writeln(f, 'NIM    : ', nim);
  end;

  writeln(f);
  garis2_display;
  writeln(f, '|No.|Matkul                          |Nilai|');
  garis2_display;

  for i := 1 to banyak_matkul do
  begin
    with var_matkul[i] do
    begin
      write(f, '|', i, ' .');
      write(f, '|', namkul);
      
      for j := 1 to (32 - Length(namkul)) do
      begin
        write(f, ' ');
      end;
      
      write(f, '|', nilai_matkul[i]);
      
      for j := 1 to (5 - Length(nilai_matkul[i])) do
      begin
        write(f, ' ');
      end;
      
      writeln(f, '|');
    end;
  end;

  garis2_display;
  writeln(f);
  writeln(f, 'Total SKS  : ', total_sks);
  writeln(f, 'IP Semester: ', var_mahasiswa.ip:0:2);
  writeln(f);

  close(f);
  writeln('File telah berhasil dibuat. File disimpan dengan nama :  ', filename);
end.
