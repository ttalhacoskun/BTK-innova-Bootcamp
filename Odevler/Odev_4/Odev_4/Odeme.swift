//
//  Odeme.swift
//  Odev_4
//
//  Created by Talha Coşkun on 23.09.2024.
//

import UIKit

class Odeme: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func buttonOdeme(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let homeVC = storyboard.instantiateViewController(withIdentifier: "Anasayfa") as? Anasayfa {
            navigationController?.pushViewController(homeVC, animated: true)
        }

        
        
    }
    
}
