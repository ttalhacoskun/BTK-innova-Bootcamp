//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Talha Coşkun on 21.09.2024.
//

import UIKit

class OyunEkrani: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc : Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        //iOS görünürlük kodu hide
        //Android görünürlük kodları ise visibility


        //back stack : bir sayfayı görürken arkada başka bir sayfanın beklemesi
        
        if let s = sonuc {
            labelSonuc.text = ("\(s.id!) - \(s.ad!),- \(s.kategori!),- \(s.yönetmen!),- \(s.fiyat!)₺")
        }
        
        
        
      /*  if let s = sonuc {
            if s == 0 {
                self.navigationItem.hidesBackButton = true
                
            }
            if s == 1 {
                self.navigationItem.hidesBackButton = false
                
            }
        }*/
        
    }
    

    @IBAction func buttonGeri(_ sender: Any) {
        //Bir önceki sayfaya döndürmek
        //navigationController?.popViewController(animated: true)
        //İlk sayfaya döner.
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)

    }
    
}
