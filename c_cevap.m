% YER DEĞİŞTİRME METODU

function [kok, iterasyonSayisi] = c_cevap(fonksiyon, baslangic1, baslangic2, tolerans, max_iterasyonSayisi)

% baslangic1: Birinci baslangic noktasi
% baslangic2: Ikinci baslangic noktasi

    iterasyonSayisi = 0;
    error = tolerans + 1;
    
    while error > tolerans && iterasyonSayisi < max_iterasyonSayisi
        iterasyonSayisi = iterasyonSayisi + 1;
        c = (baslangic1 * fonksiyon(baslangic2) - baslangic2 * fonksiyon(baslangic1)) / (fonksiyon(baslangic2) - fonksiyon(baslangic1));
        if fonksiyon(c) * fonksiyon(baslangic1) < 0
            baslangic2 = c;
        else
            baslangic1 = c;
        end
        error = abs((baslangic2 - baslangic1) / c) * 100;
    end
    
    kok = c;
end
