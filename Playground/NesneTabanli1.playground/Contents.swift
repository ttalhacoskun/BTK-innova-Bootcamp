import UIKit

class Urunler {
    
    var id : Int?
    var ad : String?
    var fiyat : Int?
    
    
    init() { //constructor
        
        print("nesne olusturuldu")
        
    }
    
    func bilgial() {
        
        print("-----------------------------------")
        print("id : \(id!)")
        print("ad : \(ad!)")
        print("fiyat : \(fiyat!) ₺")
        
    }
    
    // self bulunduğu sınıfı temsil eder. ( Kotlin dilindeki karşılığı ise this)
    // super : kalıtım varsa üst sınıfı temsil eder.
    
    func guncelle(miktar : Int) {//side effect
        
        fiyat = miktar
        
    }
    
    init(id : Int, ad : String, fiyat : Int){
        
        self.id = id
        self.ad = ad
        self.fiyat = fiyat // Shadowing - Gölgeleme
        
    }
    
}

// Nesne Oluşturma

let urun1 = Urunler(id: 1, ad: "tv", fiyat: 160000)

// Deger atama

//urun1.id = 1
//urun1.ad = "TV"
//urun1.fiyat = 120000

// Deger Okuma

urun1.bilgial()
urun1.guncelle(miktar: 20000)
urun1.bilgial()


let urun2 = Urunler()

urun2.id = 2
urun2.ad = "saat"
urun2.fiyat = 170000

//değer okuma

urun2.bilgial()
urun2.guncelle(miktar: 50000)
urun2.bilgial()


// Fonksiyonlar

class fonsiyonlar {
    // void : geri dönüş değeri olmayan
    func selamla1() {
        print("Merhaba Ahmet")
    }

    // return : geri dönüş değeri olan
    func selamla2() -> String {//Kotlin -> ( : ) , func(fun)
        let sonuc = "merhaba ahmet"
        
        return sonuc
    }
    
    func topla (sayi1 : Int, sayi2: Int){
        print("Toplam :\(sayi1 + sayi2)")
    }
    
    func topla (sayi1 : Double, sayi2: Double){//Overloading
        print("Toplam :\(sayi1 + sayi2)")
    }
    func topla (sayi1 : Int, sayi2: Int, İsim : String){//Overloading
        print("Toplam :\(sayi1 + sayi2) - islem yapan : \(İsim)")
    }
}

let f = fonsiyonlar()
f.selamla1()

let gelen_sonuc = f.selamla2()
print("gelen sonuc : \(gelen_sonuc)")

f.topla(sayi1: 10, sayi2: 20)
f.topla(sayi1: 23, sayi2: 34, İsim: "wwfdsf")

//Static Kullanımı - Kotlin : Companion Object

class ClassA {
    
   static var x = 10
    
   static func method(){
        print("metod çalıştır")
    }
    
}

let a = ClassA()
//print(a.x)//tek nesne ile erişim var
//a.method()

//Sanal Nesne, Virtual Object, Nameless

//print(ClassA().x)//1. nesne
//ClassA().method()//2.nesne

print(ClassA.x)
ClassA.method()


//Enum - Enumeration
enum Boyut {
    
    case kucuk
    case orta
    case buyuk
    
}

func ucret (adet : Int, boyut : Boyut){
    
    switch boyut{
        
    case .kucuk : print("ucret : \(adet * 456)₺")
    case .orta : print("ucret : \(adet * 459)₺")
    case .buyuk : print("ucret : \(adet * 466)₺")
        
    }
    
}

ucret(adet: 200, boyut: .orta)

//Kalitim - Inheritance - Miras  15.09.2024

class ev {
    
    var penceresayisi:Int?
    
    init(penceresayisi: Int? = nil) {
        self.penceresayisi = penceresayisi
    }
    
}
class saray : ev {
    
    var kulesayisi:Int?
    
    init(kulesayisi: Int?, penceresayisi: Int) {
        self.kulesayisi = kulesayisi
        super.init(penceresayisi:penceresayisi)
    }
    
}
class villa : ev {
    
    var garajVarmi:Bool?
    
    init(garajVarmi: Bool?, penceresayisi: Int) {
        self.garajVarmi = garajVarmi
        super.init(penceresayisi: penceresayisi)
    }
    
}

//Override : Kalıtım var

class Hayvan {
    func sesCikar() {
        print("Sesim Yok")
    }
}
class Memeli : Hayvan {
    
    
}
class Kedi : Memeli{
    override func sesCikar() {
        print("Miyav Miyav")
    }
    
}
class Kopek : Memeli{
    override func sesCikar() {
        print("Hav Hav")
    }
    
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar()//Kalitim yok, kendi methoduna erişiyor
memeli.sesCikar()//Kalitim var üst sınıfın methoduna erişiyor
kedi.sesCikar()//kalitim var kendi methoduna erişiyor
kopek.sesCikar()//kallitim var kendi methoduna erişiyor.



// Protocol
protocol myProtocol {
    var degisken : Int{get set}
    
    func metod1()
    func metod2() -> String
    
}

class myClass : myProtocol {
    var degisken: Int = 10
    func metod1() {
        print("Metod 1 çalıştı")
    }
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
}

//Closure

let ifade = {
    print("Merhaba")
}

ifade()

