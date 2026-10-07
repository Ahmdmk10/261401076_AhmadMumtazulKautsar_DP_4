program soal4;
uses crt;

var
   pilihan: integer;
  angka1, angka2, hasilReal: real;
  sisaBagi, hasilDiv: integer;
  lagi: char;

begin
  clrscr;
  repeat
  clrScr;
  writeln('Program Kalkulator Sederhana');
  writeln('1. Penjumlahan');
  writeln('2. Pengurangan');
  writeln('3. Perkalian');
  writeln('4. DIV');
  writeln('5. Modulus');
  writeln('6. Pembagian');
  write('Pilih operasi yang ingin dilakukan (1-6): ');
  readln(pilihan);
  case pilihan of
    1: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);
         hasilReal := angka1 + angka2;
         writeln('Hasil penjumlahan: ', hasilReal:0:2);
       end;
    2: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);
         hasilReal := angka1 - angka2;
         writeln('Hasil pengurangan: ', hasilReal:0:2);
       end;
    3: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);
         hasilReal := angka1 * angka2;
         writeln('Hasil perkalian: ', hasilReal:0:2);
       end;
    4: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);            
         hasilDiv := trunc(angka1) div trunc(angka2);
         writeln('Hasil pembagian (DIV): ', hasilDiv);
       end;
    5: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);
         sisaBagi := trunc(angka1) mod trunc(angka2);
         writeln('Hasil modulus: ', sisaBagi);
       end;
    6: begin
         write('Masukkan angka pertama: ');
         readln(angka1);
         write('Masukkan angka kedua: ');
         readln(angka2);
         hasilReal := angka1 / angka2;
         writeln('Hasil pembagian: ', hasilReal:0:2);
       end;
    else
      writeln('Pilihan tidak valid. Silakan pilih antara 1 hingga 6.');
  end;      
    repeat
      write('Apakah Anda ingin melakukan operasi lain? (Y/T): ');
      readln(lagi);
      
      if (lagi <> 'Y') and (lagi <> 'y') and (lagi <> 'T') and (lagi <> 't') then
      begin
        writeln('Input tidak valid! Harap masukkan huruf Y (Ya) atau T (Tidak).');
      end;
      
    
    until (lagi = 'Y') or (lagi = 'y') or (lagi = 'T') or (lagi = 't');

  until (lagi = 'T') or (lagi = 't');
  
  writeln('Terima kasih telah menggunakan program kalkulator sederhana.');
  
end.



    