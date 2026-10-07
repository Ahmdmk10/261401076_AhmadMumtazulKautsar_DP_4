program ganjilgenap;
uses crt;
var
  kategori, i, n: integer;

begin
  clrscr;
  write('Masukkan batas bilangan: ');
  readln(n);
  write('Pilih kategori deret (1 = Ganjil, 2 = Genap): ');
  readln(kategori);

  if (kategori = 1) then
  begin 
   writeln('Deret bilangan ganjil dari 1 sampai ', n, ' (Kelipatan 5 dilewati):');
  end
  else if (kategori = 2) then
  begin
   writeln('Deret bilangan genap dari 1 sampai ', n, ' (Kelipatan 5 dilewati):');
  end
  else
  begin
   writeln('Kategori tidak valid. Silakan pilih 1 untuk Ganjil atau 2 untuk Genap.');
   readln;
   exit;
  end;  

  i := 1; // Mulai dari 1 agar terstruktur
  while i <= n do
  begin
    { Jika memilih Ganjil (1), lewati angka Genap }
    if (kategori = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Jika memilih Genap (2), lewati angka Ganjil }
    if (kategori = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Jika angka merupakan kelipatan 5, lewati }
    if (i mod 5 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Tampilkan angka yang lolos saringan }
    write(i, ' ');
    
    i := i + 1;
  end;

  writeln();
  readln;
end.
