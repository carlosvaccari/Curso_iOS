//
//  CheckoutViewController.swift
//  Aula3Sample
//
//  Created by Matheus on 2019-02-20.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class CheckoutViewController : UIViewController {

    weak var delegate: ListDelegate?
    
    func setDelegate(delegate: ListDelegate) {
        self.delegate = delegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buy(_ sender: UIButton) {
        let randomInt = Int.random(in: 0..<10)
        var product : Product
        if (randomInt < 3) {
            product = Product(name: "Carlos", cartao: "É o Rei", pedido: "Do iOS")
        } else if (randomInt > 3 && randomInt < 6) {
            product = Product(name: "Felipe", cartao: "É o servo", pedido: "Do iOS")
        } else {
            product = Product(name: "Marlene", cartao: "É alguem", pedido: "que nao conheco")
        }
        delegate?.add?(order: product)
        print("NOVO PEDIDO")
        // aqui vai a função de compra
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
