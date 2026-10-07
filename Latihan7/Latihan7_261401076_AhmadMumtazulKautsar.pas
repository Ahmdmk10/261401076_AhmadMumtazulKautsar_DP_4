program soal7;
uses crt;
var 
  tarif : longint;
  kode : char;
  jam : integer;

begin
    clrscr;
    writeln('=== SELAMAT DATANG DI PROGRAM TARIF PARKIR ===');
    writeln('Pilihan Kode Kendaraan:');
    writeln('  [M] Mobil  (Rp5.000 jam 1, berikutnya Rp3.000/jam)');
    writeln('  [K] Motor  (Rp2.000 jam 1, berikutnya Rp1.000/jam)');
    writeln('  [B] Bus    (Rp10.000 jam 1, berikutnya Rp5.000/jam)');
    writeln('----------------------------------------');
    
    write('Masukkan kode kendaraan (M/K/B) : ');
    readln(kode);
    write('Masukkan lama parkir (dalam jam): ');
    readln(jam);
    writeln('----------------------------------------');

  if jam <= 0 then
  begin
    writeln('Error: Lama parkir minimal adalah 1 jam!');
  end
  else
  begin
    case UpCase(kode) of
      'M': 
        begin
          if jam > 10 then
            tarif := 30000 
          else
            tarif := 5000 + (jam - 1) * 3000; 
        end;
        
      'K': 
        begin
          if jam > 10 then
            tarif := 10000 
          else
            tarif := 2000 + (jam - 1) * 1000; 
        end;
        
      'B': 
        begin
          if jam > 10 then
            tarif := 50000 
          else
            tarif := 10000 + (jam - 1) * 5000; 
        end;
    else
      tarif := -1; 
    end;

    if tarif = -1 then
    begin
      writeln('Kode kendaraan tidak valid! Harap masukkan M, K, atau B.');
    end
    else
    begin
      writeln('Jenis Kendaraan : ', UpCase(kode));
      writeln('Lama Parkir     : ', jam, ' jam');
      writeln('Total Tarif     : Rp ', tarif);
      
      if jam > 10 then
        writeln('(Catatan: Dikenakan Tarif Maksimal Flat karena > 10 jam)');
    end;
  end;

  writeln('========================================');

end.
