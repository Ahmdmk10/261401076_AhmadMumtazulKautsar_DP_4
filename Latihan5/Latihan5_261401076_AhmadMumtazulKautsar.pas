program latihan5;
uses crt;

var 
M, N, i, j : integer;           // M = Jumlah mahasiswa, N = Jumlah tugas, i & j = Counter loop
nilaiTugas, totalNilai, avg : real; // Nilai tugas, akumulasi total, dan rata-rata
jumlahLulus, jumlahTidakLulus : integer;
begin
    clrscr;
    writeln('=== Selamat datang di prorgam rekapitulasi nilai mahasiswa ===');
    write('Masukkan jumlah mahasiswa : ');
    readln(M);
    write('Masukkan jumlah tugas : ');
    readln(N);
     
    jumlahLulus := 0;
    jumlahTidakLulus := 0;

    for i := 1 to M do 
    begin
     writeln('Mahasiswa ke-', i);
     totalNilai := 0;

    for j := 1 to N do
    begin
      write('  - Masukkan nilai tugas ke-', j, ' : ');
      readln(nilaiTugas);
      totalNilai := totalNilai + nilaiTugas;
    end;
      
      avg := totalNilai / N;
      writeln(' > Rata-rata nilai mahasiswa ke- ', i, ' adalah ', avg:0:2);

      if avg >= 65 then 
      begin
        writeln('Status : LULUS');
        jumlahLulus := jumlahLulus + 1;
      end
      else
      begin
        writeln('Status : TIDAK LULUS !');
        jumlahTidakLulus := jumlahTidakLulus + 1;
      end;

      writeln('---------------------------------------------------------------');
    end;
    writeln('============================================================');
    writeln('                 REKAPITULASI KELAS KESELURUHAN             ');
    writeln('============================================================');
    writeln('Total Mahasiswa LULUS      : ', jumlahLulus);
    writeln('Total Mahasiswa TIDAK LULUS: ', jumlahTidakLulus);
    writeln('============================================================');
end.