clear all
clc
global VERI;
Verileri_Oku( );
[Best_student,Best_fitness,sonuclar]=SPBO(VERI.Veri_Seti,VERI.Veri_Siniflari,VERI.Yeni_Veri,VERI.Yeni_Veri_Siniflari);
disp(Best_student);
disp(Best_fitness);
fprintf('Bitti :) %s\n');

