//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by Talha Coşkun on 21.09.2024.
//

import UIKit

class Anasayfa: UIViewController {
    
    // 0-10
    //sıfır-bir-10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items{
            let anasayfaItem = tabItems[0]
            let ayarlatItem = tabItems[1]
            anasayfaItem.badgeValue = "1"
            ayarlatItem.badgeValue = "20"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.black
        
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
    }

    func renkDegistir(itemAppearance : UITabBarItemAppearance){
        //seçili
        
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        // seçili olmayan
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
        
        
    }

}

