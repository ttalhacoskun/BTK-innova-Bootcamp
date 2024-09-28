//
//  ViewController.swift
//  TasarimCalismasi
//
//  Created by Talha Coşkun on 15.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pizza"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "AnaRenk")
        
        appearance.titleTextAttributes = [.foregroundColor : UIColor(named: "YaziRenk1")]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    


}

