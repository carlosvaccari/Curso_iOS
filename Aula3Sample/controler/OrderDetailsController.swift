//
//  OrderDetailsController.swift
//  Aula3Sample
//
//  Created by LOWCOST on 21/02/2019.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class OrderDetailsController : UIViewController {
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        print("back")
    }
    
    @IBOutlet weak var pedido: UITextField!
    @IBOutlet weak var cartao: UITextField!
    @IBOutlet weak var nome: UITextField!
    
    var product: Product = Product (name: "", cartao: "", pedido: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pedido.text = product.pedido
        cartao.text = product.cartao
        nome.text = product.name
    }
    
    func setProduct(product: Product) {
        self.product = product
    }
    
}
