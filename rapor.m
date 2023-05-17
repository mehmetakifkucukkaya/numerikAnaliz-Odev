fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;

% Gerçek kök (MATLAB fzero fonksiyonu ile bulunan kök)
gercekKok = fzero(fonksiyon, [-1, 0]);
fprintf('fzero fonksiyonu ile bulunan gerçek kök: <strong>%.5f</strong>\n', gercekKok);

% B Şıkkı -> İkiye Bölme için Fonksiyon ve başlangıç değerleri
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
baslangic = -1;
bitis = 0;
tolerans = 0.01;
    
% İkiye bölme fonksiyonunu kullanarak kökü bulalım
[kok_ikiyebol, iterasyonSayisi_ikiyeBolme] = b_cevap(fonksiyon, baslangic, bitis, tolerans);

% C Şıkkı -> Yer Değiştirme İçin Fonksiyon ve başlangıç değerleri
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
baslangic = -1;
bitis = 0;
tolerans = 0.01;
max_iterasyonSayisi = 500;

% Yer değiştirme fonksiyonunu kullanarak kökü bulalım
[kok_yerDegistir, iterasyonSayisi_yerDegistir] = c_cevap(fonksiyon, baslangic, bitis, tolerans, max_iterasyonSayisi);

% D Şıkkı -> Newton Rashon için Fonksiyon ve türevi
fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3;
df = @(x) -21 + 36*x - 8.25*x.^2;
x0 = -1; 
tolerans = 0.01;
max_iterasyonSayisi = 1000;

% Newton-Raphson fonksiyonu kullanarak kökü bulalım
[kok_newton_rapshon, iterasyonSayisi_newton_rapshon] = d_cevap(fonksiyon, df, x0, tolerans, max_iterasyonSayisi);

% Yaklaşık bağıl hataları bulalım
bagilHata_b_ikiyebol = e_cevap(kok_ikiyebol, gercekKok);
bagilHata_c_yerdegistir = e_cevap(kok_yerDegistir, gercekKok);
bagilHata_d_newton_rapshon = e_cevap(kok_newton_rapshon, gercekKok);

fprintf('\n');

% SONUÇLAR

fprintf('İkiye Bölme Metodu\n----------------------------\n');
fprintf('Kök: <strong>%.5f</strong>\n',kok_ikiyebol);
fprintf('İterasyon Sayısı: <strong>%d</strong>\n',iterasyonSayisi_ikiyeBolme);
fprintf('Yaklaşık Bağıl Hata:<strong>%.2f%%</strong>\n',bagilHata_b_ikiyebol);
fprintf('----------------------------\n\n');

fprintf('Yer Degistirme Metodu\n----------------------------\n');
fprintf('Kök: <strong>%.5f</strong>\n',kok_yerDegistir);
fprintf('İterasyon Sayısı: <strong>%d</strong>\n',iterasyonSayisi_yerDegistir);
fprintf('Yaklaşık Bağıl Hata:<strong>%.2f%%</strong>\n',bagilHata_c_yerdegistir);
fprintf('----------------------------\n\n');

fprintf('Newton - Rapshon Metodu\n----------------------------\n');
fprintf('Kök: <strong>%.5f</strong>\n',kok_newton_rapshon);
fprintf('İterasyon Sayısı: <strong>%d</strong>\n',iterasyonSayisi_newton_rapshon);
fprintf('Yaklaşık Bağıl Hata:<strong>%.2f%%</strong>\n',bagilHata_d_newton_rapshon);
fprintf('----------------------------\n');

