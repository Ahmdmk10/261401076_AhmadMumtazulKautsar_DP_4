program login;
uses crt;
const
  password = 'pascal123';
var
  inputPassword: string;
  percobaan: integer;
begin
  clrscr;
  percobaan := 0;
  writeln('Selamat datang di verifikasi password !');

  repeat
    percobaan := percobaan + 1;
    writeln('Percobaan ke-', percobaan, ' kali');
    write('Masukkan password : ');
    readln(inputPassword);

    if inputPassword = password then
    begin
      writeln('Password benar! Akses diterima.');
      break;
    end
    else
    begin
      writeln('Password salah! Percobaan ke-', percobaan);
      end;
      if percobaan = 3 then
      begin
        writeln('Anda telah mencapai batas percobaan. Akses ditolak. Akun anda dikunci');
      end;
  until percobaan >= 3;
end.
  
