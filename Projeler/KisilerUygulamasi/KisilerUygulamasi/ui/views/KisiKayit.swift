//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Talha Coşkun on 22.09.2024.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonKaydet(_ sender: Any) {
        
        if let kisi_ad = tfKisiAd.text, let kisi_tel = tfKisiTel.text {
            kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
        }
        
    }
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        
        print("Kisi Kaydet: \(kisi_ad) - \(kisi_tel))")
        
    }
    


}
