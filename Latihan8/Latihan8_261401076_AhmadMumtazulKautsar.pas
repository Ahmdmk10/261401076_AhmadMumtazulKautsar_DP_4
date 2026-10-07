program soalGaji;
uses crt;
var 
  golongan : char;
  jamKerja, jamLembur : integer;
  gajiPokok, lembur, bonus, totalGaji : longint;

begin
    clrscr;
    writeln('=== PROGRAM GAJI KARYAWAN ===');
    write('Masukkan Golongan (A/B/C) : ');
    readln(golongan);
    write('Masukkan Jam Kerja        : ');
    readln(jamKerja);
    
    lembur := 0;
    bonus := 0;

    case UpCase(golongan) of
      'A': 
        begin
          gajiPokok := 1500000;
        end;
        
      'B': 
        begin
          gajiPokok := 2000000;
        end;
        
      'C': 
        begin
          gajiPokok := 2500000;
          if jamKerja > 50 then
            bonus := 100000;
        end;
    else
      gajiPokok := -1;
    end;

    if gajiPokok = -1 then
    begin
      writeln('Golongan tidak valid!');
    end
    else
    begin
      if jamKerja > 40 then
      begin
        jamLembur := jamKerja - 40;
        lembur := jamLembur * 20000;
      end;

      totalGaji := gajiPokok + lembur + bonus;

      writeln('----------------------------------------');
      writeln('Gaji Pokok      : Rp ', gajiPokok);
      writeln('Lembur          : Rp ', lembur);
      writeln('Bonus           : Rp ', bonus);
      writeln('----------------------------------------');
      writeln('Total Gaji Akhir: Rp ', totalGaji);
    end;
end.
