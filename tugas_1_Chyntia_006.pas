program identifikasi_NIM;
uses crt, sysutils;

var
    nomorUrut: integer;
    kelas: char;
    fakultas, nama, nim, stambuk, kodefakultas, kodeprodi, prodi, jalur: string;

begin
    clrscr;
    Write('Masukkan nama anda: ');
    Readln(nama);
    Write('Masukkan NIM anda: ');
    Readln(nim);
    writeln('=================================================================');

    stambuk := nim[1] + nim[2];
    kodeFakultas := nim[3] + nim[4];
    kodeProdi := nim[5] + nim[6];
    nomorUrut := StrToInt(nim[7] + nim[8] + nim[9]);

    case kodefakultas of
        '01': fakultas := 'Fakultas Kedokteran';
        '02': fakultas := 'Fakultas Hukum';
        '03': fakultas := 'Fakultas Pertanian';
        '04': fakultas := 'Fakultas Teknik';
        '05': fakultas := 'Fakultas Ekonomi dan Bisnis';
        '06': fakultas := 'Fakultas Kedokteran Gigi';
        '07': fakultas := 'Fakultas Ilmu Budaya';
        '08': fakultas := 'Fakultas Matematika dan Ilmu Pengetahuan Alam';
        '09': fakultas := 'Fakultas Ilmu Sosial dan Politik';
        '10': fakultas := 'Fakultas Kesehatan Masyarakat';
        '11': fakultas := 'Fakultas Keperawatan';
        '12': fakultas := 'Fakultas Ilmu Kehutanan';
        '13': fakultas := 'Fakultas Psikologi';
        '14': fakultas := 'Fakultas Ilmu Komputer dan Teknologi Informasi';
        '15': fakultas := 'Fakultas Farmasi';
        else fakultas := 'Kode Fakultas tidak terdaftar';
    end;

    case fakultas of
        'Fakultas Kedokteran':
            case kodeprodi of
                '00': prodi := 'Pendidikan Dokter';
            end;
        'Fakultas Hukum':
            case kodeprodi of
                '00': prodi := 'Ilmu Hukum';
            end;
        'Fakultas Pertanian':
            case kodeprodi of
                '01': prodi := 'Agroteknologi';
                '02': prodi := 'Manajemen Sumberdaya Perairan';
                '03': prodi := 'Agribisnis';
                '05': prodi := 'Teknologi Pangan';
                '06': prodi := 'Peternakan';
                '08': prodi := 'Teknik Pertanian dan Biosistem';
                '10': prodi := 'Agroteknologi (PSDKU)';
            end;
        'Fakultas Teknik':
            case kodeprodi of
                '01': prodi := 'Teknik Mesin';
                '02': prodi := 'Teknik Elektro';
                '03': prodi := 'Teknik Industri';
                '04': prodi := 'Teknik Sipil';
                '05': prodi := 'Teknik Kimia';
                '06': prodi := 'Arsitektur';
                '07': prodi := 'Teknik Lingkungan';
                '31': prodi := 'Pendidikan Profesi Insinyur';
            end;
        'Fakultas Ekonomi dan Bisnis':
            case kodeprodi of
                '01': prodi := 'Ekonomi Pembangunan';
                '02': prodi := 'Manajemen';
                '03': prodi := 'Akuntansi';
                '04': prodi := 'Kewirausahaan';
            end;
        'Fakultas Kedokteran Gigi':
            case kodeprodi of
                '01': prodi := 'Sarjana Kedokteran Gigi';
                '31': prodi := 'Profesi Kedokteran Gigi';
            end;
        'Fakultas Ilmu Budaya':
            case kodeprodi of
                '01': prodi := 'Sastra Indonesia';
                '02': prodi := 'Sastra Melayu';
                '03': prodi := 'Sastra Batak';
                '04': prodi := 'Sastra Arab';
                '05': prodi := 'Sastra Inggris';
                '06': prodi := 'Ilmu Sejarah';
                '07': prodi := 'Etnomusikologi';
                '08': prodi := 'Sastra Jepang';
                '09': prodi := 'Perpustakaan dan Sains Informasi';
                '10': prodi := 'Bahasa Mandarin';
            end;
        'Fakultas Matematika dan Ilmu Pengetahuan Alam':
            case kodeprodi of
                '01': prodi := 'Fisika';
                '02': prodi := 'Kimia';
                '03': prodi := 'Matematika';
                '05': prodi := 'Biologi';
            end;
        'Fakultas Ilmu Sosial dan Politik':
            case kodeprodi of
                '01': prodi := 'Sosiologi';
                '02': prodi := 'Ilmu Kesejahteraan Sosial';
                '03': prodi := 'Ilmu Administrasi Publik';
                '04': prodi := 'Ilmu Komunikasi';
                '05': prodi := 'Antropologi Sosial';
                '06': prodi := 'Ilmu Politik';
                '07': prodi := 'Ilmu Administrasi Bisnis';
            end;
        'Fakultas Kesehatan Masyarakat':
            case kodeprodi of
                '00': prodi := 'Kesehatan Masyarakat';
                '01': prodi := 'Gizi';
            end;
        'Fakultas Keperawatan':
            case kodeprodi of
                '01': prodi := 'Sarjana Keperawatan';
                '02': prodi := 'Profesi Ners';
            end;
        'Fakultas Ilmu Kehutanan':
            case kodeprodi of
                '01': prodi := 'Kehutanan';
            end;
        'Fakultas Psikologi':
            case kodeprodi of
                '01': prodi := 'Psikologi';
            end;
        'Fakultas Ilmu Komputer dan Teknologi Informasi':
            case kodeprodi of
                '01': prodi := 'Ilmu Komputer';
                '02': prodi := 'Teknologi Informasi';
            end;
        'Fakultas Farmasi':
            case kodeprodi of
                '01': prodi := 'Farmasi';
            end;
        else
            fakultas := 'Kode Fakultas tidak terdaftar';
    end;

    if (prodi = 'Ilmu Komputer') then
    begin
        case nomorUrut mod 3 of
            0: kelas := 'C';
            1: kelas := 'A';
            2: kelas := 'B';
        end;

        if (nomorUrut <= 30) then
            jalur := 'SNBP'
        else if (nomorUrut <= 70) then
            jalur := 'SNBT'
        else
            jalur := 'SMM';

        Writeln('Nama: ', nama);
        Writeln('NIM: ', nim);
        Writeln('Fakultas: ',fakultas);
        Writeln('Program Studi: ',prodi);
        Writeln('Jalur Masuk: ', jalur);
        Writeln('Kelas: ', kelas);
    end
    else
    begin
        Writeln('Nama: ', nama);
        Writeln('NIM: ', nim);
        Writeln('Fakultas: ', fakultas);
        Writeln('Program Studi: ', prodi);
    end;
    writeln('=================================================================');
    Readln;
end.