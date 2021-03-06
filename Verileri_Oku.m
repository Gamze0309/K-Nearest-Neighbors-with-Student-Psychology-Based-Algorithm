function [data,dataLabels,testdata,testLabels]=Verileri_Oku( )

global VERI
% VERI.Veri_Seti=[2,4;3,6;3,4;4,10;5,8;6,3;7,9;9,7;11,7;10,2];
% VERI.Veri_Siniflari={'K�T�','�Y�','�Y�','K�T�','K�T�','�Y�','�Y�','K�T�','K�T�','K�T�'};
% VERI.Yeni_Veri=[8,4];
%VERI.Veri_Seti=[0.08,0.2;0.07,0.07;0.2,0.09;1,0.2;0.05,0.06;0.2,0.25;0.17,0.07;0.15,0.55;0.5,0.08;0.1,0.06];
%VERI.Veri_Siniflari={'ERKEK','ERKEK','ERKEK','KADIN','ERKEK','ERKEK','ERKEK','KADIN','ERKEK','KADIN'};
%VERI.Yeni_Veri=[0.1,0.5];

egitim_data=readtable('VeriSeti.xls','sheet','Training_Data','range','A:F');
test_data=readtable('VeriSeti.xls','sheet','Test_Data','range','A:F');

VERI.Egitim_Siniflari = {'very_low', 'Low', 'Middle' ,'High'};
VERI.Test_Siniflari = {'Very Low', 'Low', 'Middle' ,'High'};

VERI.Veri_Seti=egitim_data(:,1:5);
VERI.Veri_Seti=table2array(VERI.Veri_Seti);
VERI.Veri_Siniflari=egitim_data(:,6);
dizi = table2array(VERI.Veri_Siniflari);
VERI.Veri_Siniflari = dizi.';
VERI.Yeni_Veri=test_data(:,1:5);
VERI.Yeni_Veri=table2array(VERI.Yeni_Veri);
VERI.Yeni_Veri_Siniflari=test_data(:,6);
dizi = table2array(VERI.Yeni_Veri_Siniflari);
VERI.Yeni_Veri_Siniflari = dizi.';

end
