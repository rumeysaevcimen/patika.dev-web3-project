// Hesap Makinesi 

actor HesapMakinesi {
  // Hucre degiskeni, hesap makinesinin mevcut degerini tutar.
  var hucre: Int = 0;

  // Toplama islemi
  public func toplama(s: Int): async Int {
    hucre += s; // Hucreye verilen sayıyı ekle
    return hucre; 
  };

  // Cıkarma islemi
  public func cikarma(s: Int): async Int {
    hucre -= s; // Hucreden verilen sayıyı cıkar
    return hucre; 
  };

  // Carpma islemi
  public func carpma(s: Int): async Int {
    hucre *= s; // Hucreyi verilen sayı ile carp
    return hucre; 
  };

  // Bolme islemi
  public func bolme(s: Int): async ?Int {
    // Eger bölücü 0 ise null döndür, aksi takdirde böl ve sonucu döndür
    if (s == 0) {
      return null; // Bölme hatası: sıfıra bölme
    } else {
      hucre /= s; // Hucreyi verilen sayıya böl
      return ?hucre; 
    };
  };

  // Hucreyi sıfırlamak icin temizleme islemi
  public func temizle(): async () {
    hucre := 0; // Hucreyi sıfırla
  };
};
