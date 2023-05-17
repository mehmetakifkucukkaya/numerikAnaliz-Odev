% BAĞIL HATA BULMA FONKSİYONU

function bagilHata = e_cevap(tahminiDeger, gercekDeger)

    % tahmini deger ile gercek deger arasındaki farkı yüzdelik hale '%' lik hale ceviriyoruz.
    
    bagilHata = abs((tahminiDeger - gercekDeger) / gercekDeger) * 100;

end
