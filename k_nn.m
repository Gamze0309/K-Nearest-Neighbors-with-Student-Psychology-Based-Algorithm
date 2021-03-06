
function hata = k_nn(k,veri_seti,veri_siniflari,yeni_veri,yeni_veri_siniflari,weights)
global komsu;
global VERI;
hata=0;
test_sinif_index = 0;
egitim_sinif_index = 0;

for i=1:length(yeni_veri)
    uzaklik_dizisi=Uzaklik_Hesapla(1,veri_seti,yeni_veri(i,:),weights);
    %disp(uzaklik_dizisi);
    [komsu]=Komsu_Bul(k,uzaklik_dizisi,veri_siniflari);
    [sinif]=Sinif_Bul();
    for j=1:4
        if (strcmp(yeni_veri_siniflari(i),VERI.Test_Siniflari(j)))
            test_sinif_index = j;
        end
    end
    
    for j=1:4
        if (strcmp(sinif.sinif,VERI.Egitim_Siniflari(j)))
            egitim_sinif_index = j;
        end
    end
    if (test_sinif_index ~= egitim_sinif_index)
        hata = hata +1;
    end
end
fprintf('%d. hata degeri\n',hata);
mesaj='KLAS�K k-NN Y�NTEM�NE G�RE SINIF TAHM�N�';
Yazdir(mesaj,sinif);
