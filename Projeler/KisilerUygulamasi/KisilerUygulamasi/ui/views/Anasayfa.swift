//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Talha Coşkun on 22.09.2024.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDetay(_ sender: Any) {
        
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "Talha", kisi_tel: "7777")
        
        performSegue(withIdentifier: "detayGecis", sender: kisi)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detayGecis" {
            
            if let kisi = sender as? Kisiler{
                
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
                
            }
            
        }
    }
    
}

