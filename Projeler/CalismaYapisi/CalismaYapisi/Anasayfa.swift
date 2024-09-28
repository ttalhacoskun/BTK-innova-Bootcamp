//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Talha Coşkun on 21.09.2024.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var labelAnasayfa: UILabel!
    
    var sayac = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelAnasayfa.text = "Sayac Sıfır"
        
        print("Anasayfa : viewDidLoad Çalıştı")
        //Bir ker çalışıyor!!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Anasayfa : viewWillAppear Çalıştı")
        
        //sayfa her göründüğünde çalışır
        //Bulunduğu sayfaya geri dönüldüğünü algılayabiliriz
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Anasayfa : viewDidDissappear Çalıştı")
        //sayfa her görünmez olduğunda çalışır
    }

    @IBAction func buttonTikla(_ sender: Any) {
        
        sayac = sayac + 1
        labelAnasayfa.text = "Sayaç : \(sayac)"
        
      /*  if sayac % 5 == 0 {
            performSegue(withIdentifier: "oyunEkraninaGecis", sender: nil)
            return
        }
       */

    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        
        let film = Filmler(id: 1, ad: "interstellar", kategori: "bilim kurgu", yönetmen: "C.Nolan", fiyat: 90)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: film)
    }
    
    //Geçiş algılama filtreleme
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Anasayfa : prepare çalıştı")
        
        if segue.identifier == "oyunEkraninaGecis" {
            
            print("oyunEkraninaGecis : Calisti")
            
            if let veri = sender as? Filmler{ // as?,as! Downcasting
                
                let gidilecekVC = segue.destination as! OyunEkrani
                gidilecekVC.sonuc = veri
               
            }
        }
    }
    
    
    @IBAction func buttonSil(_ sender: Any) {
        
        print("tiklandi")
    }
    
    
}

// eğer 0 (sayısal) gönderilirse oyun ekranı başlığında 0 yazacak ve back tuşu görünmez olacak
// eğer 1 (sayısal) gönderilirse oyun ekranı başlığında 0 yazacak ve back tuşu görünür olacak 
