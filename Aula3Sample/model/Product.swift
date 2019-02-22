//
//  Product.swift
//  Aula3Sample
//
//  Created by LOWCOST on 21/02/2019.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

class Product : NSObject {
    
    var name: String = "0"
    var cartao: String = ""
    var pedido: String = ""
    
    init(name: String, cartao: String, pedido: String) {
        self.name = name
        self.cartao = cartao
        self.pedido = pedido
    }
}
