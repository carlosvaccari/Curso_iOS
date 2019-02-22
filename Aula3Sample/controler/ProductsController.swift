//
//  ProductsController.swift
//  Aula3Sample
//
//  Created by LOWCOST on 22/02/2019.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class ProductsController : UIViewController {
    var myProducts : [String] = ["Nintendo", "PlayStation","GameBoy", "Xbox", "Nintendo 64", "CPU"]

    weak var delegate: ListDelegate?
    
    var user: User?
    
    @IBOutlet weak var tableView: UITableView!
    
    func setDelegate(delegate: ListDelegate) {
        self.delegate = delegate
    }
    
    func addToCart(productName: String) {
        var product = Product(name: user?.name ?? "Desconhecido", cartao: user?.cartao ?? "Dinheiro", pedido: productName)
        delegate?.add?(order: product)
    }
    
    func setUser(user: User) {
        self.user = user
    }
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ProductsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        addToCart(productName: myProducts[indexPath.row])
        print("Click")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let labelOrderThings = cell.viewWithTag(22) as? UILabel{
            
            labelOrderThings.text = myProducts[indexPath.row]
        }
        
        return cell
    }
}

