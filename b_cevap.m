% İKİYE BÖLME METODU

function [kok, iterasyonSayisi] = b_cevap(fonksiyon, baslangic, bitis, tolerans)
     iterasyonSayisi = 0;
    for i = 1:1000 % maksimum 1000 iterasyon yap
        c = (baslangic + bitis) / 2;
        if fonksiyon(baslangic) * fonksiyon(c) < 0
            bitis = c;
        else
            baslangic = c;
        end
        iterasyonSayisi = iterasyonSayisi + 1;
        if abs(bitis - baslangic) < tolerans % istenen toleransa ulaştığımızda çık
            break;
        end
    end
    kok = (baslangic + bitis) / 2;
end