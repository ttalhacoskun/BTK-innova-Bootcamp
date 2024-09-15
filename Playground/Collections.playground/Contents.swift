import UIKit

//set ile array arasındaki fark mülakatlarda sorulur !!

var sayilar = [Int]()

var meyveler = [String]()

meyveler.append("elma")//0.
meyveler.append("armut")//1.
meyveler.append("kiraz")//2.
meyveler.append("muz")//3.

print(meyveler)


meyveler[1] = "Yeni Kiraz"

print(meyveler)

meyveler.insert("Yeni Dünya", at: 1)

print(meyveler)


print("Boyut : \(meyveler.count)")
print("Arama : \(meyveler.contains("muz"))")

meyveler.reverse()
print(meyveler)

meyveler.sort()
print(meyveler)


//nesne tabanli
class Yemekler {
    var id : Int?
    var ad : String?
    var fiyat : Int?
    
    
    init(id: Int, ad: String, fiyat: Int) {
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
    }
}

let y1 = Yemekler(id: 1, ad: "Makarna", fiyat: 200)
let y2 = Yemekler(id: 2, ad: "Pilav", fiyat: 60)
let y3 = Yemekler(id: 3, ad: "Kavurma", fiyat: 300)

var yemeklerListesi = [Yemekler]()
yemeklerListesi.append(y1)
yemeklerListesi.append(y2)
yemeklerListesi.append(y3)

for yemek in yemeklerListesi {
    print("----------------")
    print("Id : \(yemek.id!)")
    print("ad : \(yemek.ad!)")
    print("fiyat : \(yemek.fiyat!) ₺")
    
}

// Sıralama - Sort

print("Fiyata Göre Azalan")
let siralama1 = yemeklerListesi.sorted(by: { $0.fiyat! > $1.fiyat! })

for yemek in siralama1 {
    print("----------------")
    print("Id : \(yemek.id!)")
    print("ad : \(yemek.ad!)")
    print("fiyat : \(yemek.fiyat!) ₺")
    
}
print("Fiyata Göre Artan")
let siralama2 = yemeklerListesi.sorted(by: { $0.fiyat! < $1.fiyat! })

for yemek in siralama2 {
    print("----------------")
    print("Id : \(yemek.id!)")
    print("ad : \(yemek.ad!)")
    print("fiyat : \(yemek.fiyat!) ₺")
    
}
 
//Filtreleme
print("Filtreleme 1")
let filtreleme1 = yemeklerListesi.filter({$0.fiyat! > 100 && $0.fiyat! < 250})

for yemek in filtreleme1 {
    print("----------------")
    print("Id : \(yemek.id!)")
    print("ad : \(yemek.ad!)")
    print("fiyat : \(yemek.fiyat!) ₺")
    
}

print("Filtreleme 2")
let filtreleme2 = yemeklerListesi.filter({$0.ad!.contains("a")})

for yemek in filtreleme2 {
    print("----------------")
    print("Id : \(yemek.id!)")
    print("ad : \(yemek.ad!)")
    print("fiyat : \(yemek.fiyat!) ₺")
    
    
}

// Set - Hashset : içerisinde bulunan insert özelliği liste içerisinde var olan bir nesneyi tekrar ekletmiyor ve sıralamayı karışık yaptırıyor
var sayilar2 = Set<Int> ()

var meyveler2 = Set<String> ()

meyveler2.insert("Kiraz")
meyveler2.insert("Elma")
meyveler2.insert("Muz")

print(meyveler2)

meyveler2.insert("Amasya Elması")
print(meyveler2)

print("Boyut : \(meyveler2.count)")

for (indeks, meyve) in meyveler2.enumerated() {
    
    print("\(indeks). -> Sonuç : \(meyve)")
}


// Dictionery - Map - HashMap ( JSON veri modelinin temeli )

var d1 = [Int : String]()

var d2 = ["ad" : "Ahmet", "soyad" : "Aksoy"]

var iller = [Int:String]()

iller[16] = "Bursa"
iller[34] = "İstanbul"
iller[6] = "Ankara"

print(iller)

iller [16] = "YENİ BURSA"

print(iller)

for (anahtar, deger) in iller {
    print("\(anahtar) -> \(deger)")
}

//Guard (if tersi) false durumunda çalışan bir yapı
func selamla1(ad : String){
    if ad == "Ahmet"{
        print("merhaba Ahmet")
    }else{
        print("tanınmayan kisi")
    }
    
    
}
func selamla2(ad : String){
    guard ad == "Ahmeet" else {
        print("tanınmayan kisi")
        return
    }
    print("merhaba Ahmet")
}

selamla1(ad: "Ahmet")
selamla2(ad: "Ahmeet")

func buyukHarf(yazi : String?){
    
    if let temp = yazi {
        print("Sonuç : \(temp.uppercased())")
    }else{
        print("icerik bos")
    }
    
}

func buyukHarf2(yazi : String?){
    
    guard let temp = yazi else {
        print("icerik bos")
        return
    }
    print("Sonuç : \(temp.uppercased())")
    
}
buyukHarf(yazi: "Merhaba")
buyukHarf2(yazi: nil)

// try - catch
//mülakatta cıkabilir
// compile error - yazım hataları
//let x = 10
//x = 20 dersek hata alırız genelde syntax hataları
//runtime error ( exception)
// let s1 = 10
// let s2 = 0
//print(s1 / s2) bu durumda hata verir 0'a böldüğümüzde sonsuz değer cıkacagı icin

enum Hata : Error {
    case sifiraBolunme
}

func Bolme(s1:Int, s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hata.sifiraBolunme
    }
    return s1 / s2
}

let s1 = 10
let s2 = 0
do{
    let sonuc = try Bolme(s1: 10, s2: 0)
    print(sonuc)
} catch {
    print("sıfıra bölünme hatası ")
    
}

let sonuc2 = try? Bolme(s1: 10, s2: 5)
print(sonuc2!)
