% NEWTON - RAPSHON METODU

function [kok, iterasyonSayisi] = d_cevap(fonksiyon, df, x0, tolerans, max_iterasyonSayisi)
    iterasyonSayisi = 0;
    
    x = x0;  % Başlangıç değeri
    for iterasyonSayisi = 0:max_iterasyonSayisi
        x_onceki = x;
        x = x - fonksiyon(x) / df(x);
        if abs(x - x_onceki) < tolerans
            break;
        end
    end
    kok = x;
end
