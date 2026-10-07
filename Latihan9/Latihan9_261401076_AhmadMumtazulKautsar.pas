program latihan8;
uses crt;
var 
  tahun, bulan, jumlahHari : integer;
  kabisat : boolean;

begin
    clrscr;
    writeln('=== PROGRAM PENENTU JUMLAH HARI ===');
    write('Masukkan Tahun : ');
    readln(tahun);
    write('Masukkan Nomor Bulan (1-12) : ');
    readln(bulan);

    if (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
      kabisat := true
    else
      kabisat := false;

    case bulan of
      1, 3, 5, 7, 8, 10, 12 : 
        jumlahHari := 31;
        
      4, 6, 9, 11 : 
        jumlahHari := 30;
        
      2 : 
        begin
          if kabisat = true then
            jumlahHari := 29
          else
            jumlahHari := 28;
        end;
    else
      jumlahHari := -1;
    end;

    if jumlahHari = -1 then
    begin
      writeln('Nomor bulan tidak valid! Masukkan angka 1 sampai 12.');
    end
    else
    begin
      writeln('----------------------------------------');
      writeln('Tahun ', tahun, ' (Kabisat: ', kabisat, ')');
      writeln('Jumlah hari pada bulan ke-', bulan, ' adalah ', jumlahHari, ' hari.');
    end;

    readln;
end.
