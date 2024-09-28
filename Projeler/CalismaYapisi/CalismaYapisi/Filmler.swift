//
//  Filmler.swift
//  CalismaYapisi
//
//  Created by Talha Coşkun on 21.09.2024.
//

import Foundation

class Filmler {
    
    var id : Int?
    var ad : String?
    var kategori : String?
    var yönetmen : String?
    var fiyat : Int?
    
    init(id: Int, ad: String, kategori: String, yönetmen: String, fiyat: Int) {
        self.id = id
        self.ad = ad
        self.kategori = kategori
        self.yönetmen = yönetmen
        self.fiyat = fiyat
    }
}

