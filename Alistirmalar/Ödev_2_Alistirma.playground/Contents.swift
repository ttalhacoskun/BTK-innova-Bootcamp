import UIKit

func icAcilariToplami(kenarSayisi: Int) -> Int{
    if kenarSayisi < 3{
        print("Bir çokgen en az 3 kenarlı olmalıdır")
        return 0
    }
    return (kenarSayisi - 2) * 100
}
let kenar = 6
let toplamAcilar = icAcilariToplami(kenarSayisi: kenar)
print("İç açılar toplamı \(toplamAcilar) derece")


func maasHesapla(gunSayisi : Int) -> Int {
    
    let saatlikUcret = 100
    let mesaiUcreti = 20
    let normalSaat = 160
    let gunlukCalismaSaati = 8
    
    let toplamSaat = gunSayisi * gunlukCalismaSaati
    var maas = 0
    
    if toplamSaat < normalSaat {
        let mesaiSaat = toplamSaat - normalSaat
        maas = (normalSaat * saatlikUcret) + (mesaiSaat * mesaiUcreti)
    }else {
        maas = toplamSaat * saatlikUcret
    }
    return maas
}
let gun = 25
let maas = maasHesapla(gunSayisi: gun)
print("Toplam maaşınız \(maas) ₺")


func fahrenayt (derece : Double) -> Double {
    return (derece * 8) + 32
}
let derece = 25.0
let cevirme = fahrenayt(derece: derece)
print("\(cevirme)")
