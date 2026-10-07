program soal6;
uses crt;

const 
  bobotTugas = 0.3;
  bobotUTS   = 0.3;
  bobotUAS   = 0.4;

var 
  NilaiAkhir, NilaiUTS, NilaiUAS, NilaiTugas, kehadiran : real;
  indeks : char;

begin
    clrscr;
    writeln('=== Selamat datang di program nilai ===');
    
    { 1. Minta input nilai dan kehadiran terlebih dahulu }
    write('Masukkan nilai tugas : ');
    readln(NilaiTugas);
    write('Masukkan nilai UTS : ');
    readln(NilaiUTS);
    write('Masukkan nilai UAS : ');
    readln(NilaiUAS);
    write('Masukkan persentase kehadiran (0-100) % : ');
    readln(kehadiran);
    
    { 2. Hitung Nilai Akhir SETELAH data di-input }
    NilaiAkhir := (NilaiTugas * bobotTugas) + (NilaiUTS * bobotUTS) + (NilaiUAS * bobotUAS);
    
    { 3. Tentukan Indeks Nilai }
    if NilaiAkhir >= 85 then
      indeks := 'A'
    else if (NilaiAkhir >= 75) and (NilaiAkhir < 85) then
      indeks := 'B'
    else if (NilaiAkhir >= 60) and (NilaiAkhir < 75) then
      indeks := 'C'
    else if (NilaiAkhir >= 50) and (NilaiAkhir < 60) then
      indeks := 'D'
    else
      indeks := 'E';

    writeln('----------------------------------------');
    writeln('Hasil Akhir : ', NilaiAkhir:0:2);
    writeln('Indeks Nilai : ', indeks); // Diperbaiki dari wrileln
    
    { 4. Cek Status Kelulusan (Tidak boleh ada titik koma sebelum else) }
    if (NilaiAkhir >= 60) and (kehadiran >= 80) then
      writeln('Status : LULUS !')
    else 
      writeln('Status : TIDAK LULUS ! SYARAT KELULUSAN : NILAI >= 60 dan KEHADIRAN >= 80%');
      
    readln;
end.
