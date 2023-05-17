%a) f (x) = -12 - 21x +18x^2  - 2,75x^3 fonksiyonunu “matlab” da çizdirerek köklerini grafiksel olarak bulun


fonksiyon = @(x) -12 - 21*x + 18*x.^2 - 2.75*x.^3; % Graifiği çizlecek olan Fonksiyonumuz


x = linspace(-4, 4, 1000);  %grafik -4,4 aralığında çizilecek.

y = fonksiyon(x);

figure; % yeni grafik oluşturur.
plot(x, y); % x ve y eksenlerini oluşturur.
title('f(x) = -12 - 21x + 18x^2 - 2.75x^3 Fonksiyonu'); % Grafiğin başligini belirler
xlabel('x'); % x ekseninin adı
ylabel('f(x)'); % y ekseninin adı
grid on; % Kökleri daha rahat görebilmek için grafige izgara ekler.