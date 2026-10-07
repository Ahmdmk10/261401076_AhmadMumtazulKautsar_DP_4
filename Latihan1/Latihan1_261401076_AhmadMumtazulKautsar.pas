program tokoBuku;
uses crt;
var 
  N, i: integer;
  hargaBarang, totalBelanja, besarDiskon, totalBayar: real;
  persenDiskon: integer;
begin 
    clrscr;
    totalBelanja := 0;
    besarDiskon := 0;
    totalBayar := 0;
    
    write('Masukkan jumlah barang yang dibeli: ');
    readln(N);
    
    for i := 1 to N do
        begin
        write('Masukkan harga barang ke-', i, ': ');
        readln(hargaBarang);
        totalBelanja := totalBelanja + hargaBarang;
        end;
    
    if totalBelanja >= 100000 then
        begin
        persenDiskon := 10;
        besarDiskon := (persenDiskon / 100) * totalBelanja;
        end
    else if totalBelanja >= 50000 then
        begin
        persenDiskon := 5;
        besarDiskon := (persenDiskon / 100) * totalBelanja;
        end
    else
        begin
        persenDiskon := 0;
        besarDiskon := 0;
        end;
    
    totalBayar := totalBelanja - besarDiskon;
    
    writeln('Total Belanja: Rp ', totalBelanja:0:2);
    writeln('Besar Diskon (', persenDiskon, '%): Rp ', besarDiskon:0:2);
    writeln('Total Bayar: Rp ', totalBayar:0:2);
    
    end.