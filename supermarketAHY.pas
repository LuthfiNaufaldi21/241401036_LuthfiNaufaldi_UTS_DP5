program kasirAHY;
uses crt;

var 
    harga1, harga2, harga3, totalharga, diskon, pembayaran, totaldiskon : real;
    nama, hari, produk1, produk2, produk3 : string;
    poin : integer;

begin
    clrscr;

    write('Nama Anggota : '); readln(nama);
    write('Hari : '); readln(hari);
    write('Produk ke-1 : '); readln(produk1);
    write('Harga : Rp '); readln(harga1);
    write('Produk ke-2 : '); readln(produk2);
    write('Harga : Rp '); readln(harga2);
    write('Produk ke-3 : '); readln(produk3);
    write('Harga : Rp '); readln(harga3);

    totalharga := harga1 + harga2 + harga3;
    diskon := 0;

    if hari = 'Senin' then
        begin
            diskon := 10 + 10;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Selasa' then
        begin 
            diskon := 10 + 5;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Rabu' then
        begin
            diskon := 10 + 30;
            totaldiskon := diskon / 100;
        end
    
    else if hari = 'Kamis' then
        begin
            diskon := 10 + 8;
            totaldiskon := diskon / 100;
        end;

    pembayaran := totalharga - (totalharga * totaldiskon);
    poin := trunc(totalharga) div 50000;

    writeln;
    writeln('Total : Rp ', totalharga:0:0);
    writeln('Diskon : ', diskon:0:0,'%');
    writeln('Pembayaran : Rp ', pembayaran:0:0);
    writeln('Poin : ', poin);

    readln;
end.
