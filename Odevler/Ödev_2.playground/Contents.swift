import UIKit

// ---------------------------------- Ödev 2 ----------------------------------

// -- 1. Soru --

func icAcilariToplami(kenarSayisi: Int) -> Int{
    if kenarSayisi < 3 {
        print("Bir çokgen en az 3 kenarlı olmalıdır.")
        return 0
    }
    return (kenarSayisi - 2) * 180
}
let kenar = 5
let toplamAcilar = icAcilariToplami(kenarSayisi: kenar)
print("İç açılar toplamı: \(toplamAcilar) derece")

// -- 2. Soru --

func maasHesapla (gunSayisi: Int) -> Int {
    let saatlikUcret = 10
    let mesaiUcreti = 20
    let normalSaat = 160
    let gunlukCalismaSaati = 8
    
    let toplamSaat = gunSayisi * gunlukCalismaSaati
    var maas = 0
    
    if toplamSaat > normalSaat {
        let mesaiSaat = toplamSaat - normalSaat
        maas = (normalSaat * saatlikUcret) + (mesaiSaat * mesaiUcreti)
    }else {
        maas = toplamSaat * saatlikUcret
    }
    return maas
    
}
let gun = 25
let maas = maasHesapla(gunSayisi: gun)
print("Toplam Maaş \(maas) ₺")

// -- 3. Soru --

func kotaUcretiHesapla(kullanilanGB : Int) -> Int {
    let temelKota = 50
    let temelUcret = 100
    let ekGBUcreti = 4
    
    if kullanilanGB <= temelKota {
        return temelUcret
    }else {
        let fazlaGB = kullanilanGB - temelKota
        return temelUcret + (fazlaGB * ekGBUcreti)
    }
}
let gbKullanildi = 60
let toplamUcret = kotaUcretiHesapla(kullanilanGB: gbKullanildi)
print("Toplam Kota Ücreti: \(toplamUcret) ₺")

// -- 4. Soru --

func dereceyiFahrenheitCevir(derece : Double) -> Double {
    return (derece * 8 ) + 32
}
let derece = 25.0
let fahrenheit = dereceyiFahrenheitCevir(derece: derece)
print("Fahrenheit : \(fahrenheit)")

// -- 5. Soru --

func dikdorkgenCevresi (kenar1 : Double, kenar2 : Double)-> Double {
    return 2 * (kenar1 + kenar2)
}
let kenar1 = 5.0
let kenar2 = 10.0
let cevre = dikdorkgenCevresi(kenar1: kenar1, kenar2: kenar2)
print("Dikdörtgenin çevresi: \(cevre)")

// -- 6. Soru --

func faktoriyel (sayi : Int) -> Int {
    if sayi == 0 {
        return 1
    }
    return sayi * faktoriyel(sayi: sayi - 1)
}
let sayi = 5
let sonuc = faktoriyel(sayi: sayi)
print("\(sayi)! = \(sonuc)")

// -- 7. Soru --

func aHarfiniBul(kelime: String) -> Int {
    return kelime.filter { $0 == "a" || $0 == "A"}.count
}
let kelime = "Merhaba"
let aSayisi = aHarfiniBul(kelime: kelime)
print("Kelime içinde \(aSayisi) adet 'a' harfi var.")
