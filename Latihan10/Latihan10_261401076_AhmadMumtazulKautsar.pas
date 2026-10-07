program NamaHari;
uses crt;

var
  pilihan: integer;

begin
  clrscr;
  writeln('========================================');
  writeln('        PROGRAM MENAMPILKAN NAMA HARI   ');
  writeln('========================================');
  write('Masukkan angka hari (1-7): ');
  readln(pilihan);
  writeln('----------------------------------------');

  case pilihan of
    1: writeln('Output: "Hari Senin"');
    2: writeln('Output: "Hari Selasa"');
    3: writeln('Output: "Hari Rabu"');
    4: writeln('Output: "Hari Kamis"');
    5: writeln('Output: "Hari Jumat"');
    6: writeln('Output: "Hari Sabtu"');
    7: writeln('Output: "Hari Minggu"');
  else
    writeln('Error: Masukkan angka antara 1 sampai 7!');
  end;

  writeln('========================================');
end.
