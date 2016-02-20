//
//  Plat.swift
//  Feed
//
//  Created by Arnau Marti Font on 20/2/16.
//  Copyright © 2016 Arnau Marti Font. All rights reserved.
//

import UIKit
class Plat {
    

    var nom: String = ""
    var descripcio: String = ""
    var imatge: UIImage?

    init?(nom: String, descripcio:String, imatge: UIImage?){
        
        self.nom = nom
        self.descripcio = descripcio
        self.imatge = imatge
        
    }

}
