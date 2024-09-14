import UIKit

var ögrenciAd = "Ahmet"
var ögrenciYas = 23
var ögrenciBoy = 1.70
var ögrenciBasHarf = "A"
var ögrenciDevamDurumu = true

print("ögrenci Adı : \(ögrenciAd)")
print("ögrenciBoy : \(ögrenciBoy)")
print("ögrenciYas : \(ögrenciYas)")
print("ögrenciDevamDurumu : \(ögrenciDevamDurumu)")
print("ögrenciBasHarf : \(ögrenciBasHarf)")



// ----------------------------------------------- Sabitler ------------------------------------------- Constant --------------------------------------------------

var sayi = 100
print(sayi)
sayi = 300
print(sayi)

let numara = 50
print(numara)

// Tür Dönüşümü -------------------------------------------- Type Cating -------------------------------------------------

//Sayısaldan Sayısala

var i = 42
var d = 37.93

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

// Sayısaldan Metine

var sonuc3 = String(d)
print(sonuc3)

// Metinden Sayısala

var yazi = "57"

if let sonuc4 = Int(yazi) {
    
    print(sonuc4)
    
}else {
    
    print("Dönüsümde Hata Olustu")
    
}

// Tuples

var kisi = ("Ahmet","Aksoy",30)
var ad  = kisi.0
print(ad)
