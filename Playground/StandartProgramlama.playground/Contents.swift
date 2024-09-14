import UIKit

// if yapısı

var yas = 16
var isim = "Ahmet"


if yas >= 18 {
    print("Resitsiniz")
}else {
    print("Büyüksünüz")
}

if isim == "Mehmet" {
    
    print("Merhaba Ahmet")
    
}else {
    
    print("tanınmayan kişi")
    
}

var k_a = "admin"
var s = 123456

if k_a == "admin" && s == 123456 { //AND : true ve true olursa = true diğer durumlar hep false
    
    print("Hosgeldiniz")
    
}else{
    
    print("hatali giris")
    
}

var numara = 300

if numara == 100 || numara == 200 {//OR : false ve false olursa = false diğer durumlar hep false
    
    print("numara 100 veya 200 dür")
    
}else {
    
    print("degildir")
    
}

// Switch - When

var sonuc = 3

switch sonuc {
    
case 1: print("sonuc : 1")
case 2: print("sonuc : 2")
case 3: print("sonuc : 3")
default : print("böyle bir sonuc yok")
    
}

// Döngüler - Loops
//1,2,3

for x in 1...5 { //Kotlin 1..3
    
    print("Döngü 1 : \(x)")
    
}

// 10 - 20 , 5 er aartsın

for y in stride(from: 10, through: 20, by: 5) {
    
    print("döngü 2 : \(y)")
    
}

//20 - 10 , 5 er azalsın

for y in stride(from: 20, through: 10, by: -5) {
    
    print("döngü 3 : \(y)")
    
}

// 1,2,3

var sayac = 1

while sayac < 4 {
    
    print("döngü 4 : \(sayac)")
    sayac+=1 //sayac = sayac + 1
        
}

for x in 1...5 { //Kotlin 1..3
    if x == 3 {
        break
    }
    print("Döngü 5 : \(x)")
    
}

for x in 1...5 { //Kotlin 1..3
    if x == 3 {
        continue
    }
    print("Döngü 6 : \(x)")
    
}
