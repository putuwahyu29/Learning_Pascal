## Instalasi Pascal di Linux


Kita akan menggunakan Free Pascal sebagai compiler untuk menjalankan program Pascal. Untuk tahapan instalasi, silakan mengikuti instruksi yang disediakan pada link berikut:

1. Langkah pertama yang harus dilakukan untuk menyiapkan laptop/komputer kita agar siap dalam melakukan pemrograman Free Pascal adalah melakukan download file instalasi pada halaman resmi di link dibawah ini:

   > https://www.freepascal.org/download.html

2. Pada halaman tersebut silahkan pilih versi sistem operasi yang anda gunakan. Misalnya kita menggunakan linux maka klik pada Linux.

   <img src="img/1.png" alt="1">

3. Kemudian pilih server untuk download. Misalkan kita pilih SourceForge.

   <img src="img/2.png" alt="2">

4. Halaman akan dialihkan ke halaman SourceForge untuk memilih versi release.
   Pilih fpc-3.2.0-x86_64-linux.tar.gz

  <img src="img/3.png" alt="3">
5. Kemudian tunggu proses download selesai.
   
   <img src="img/4.png" alt="4">
6. Kemudian ekstrak file yang sudah didownload.
   
   <img src="img/5.png" alt="5">
7. Kemudian buka folder hasil ekstrak dan buka terminal di folder tersebut.
    
    <img src="img/6.png" alt="6">
8. Kemudian ketikkan `sudo su` dan masukkan password untuk masuk ke mode super user.
    
    <img src="img/7.png" alt="7">
9. Kemudian ketikkan `./install.sh` untuk menjalanakan instalasi.
    
    <img src="img/8.png" alt="8">
10. Kemudian ketik `/usr` 
    
    <img src="img/9.png" alt="9">
11. Tunggu proses instalasi selesai.
    
    <img src="img/10.png" alt="10">
12. Kemudian ketikkan `y` untuk pertanyaan (Y/n) dan ketikkan `/usr/doc` ketika memilih tempat demos.
    
    <img src="img/11.png" alt="11">
13. Proses instalasi sudah selesai, ketikkan `exit` pada terminal untuk keluar dari mode super user.
    
    <img src="img/12.png" alt="12">
14. Untuk memastikan free pascal sudah terinstall, silakan buka terminal dan ketikkan `fpc -i` dan akan muncul seperti dibawah ini.
    
    <img src="img/13.png" alt="13">
15. Jika sudah terinstall, maka kita bisa menjalankan program Pascal dengan mengetikkan `fp` pada terminal.
    
    <img src="img/14.png" alt="14">

16.  Selamat, free pascal sudah terinstall di laptopmu :)
