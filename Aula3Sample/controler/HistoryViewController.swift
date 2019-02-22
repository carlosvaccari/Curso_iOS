//
//  HistoryViewController.swift
//  Aula3Sample
//
//  Created by Matheus on 2019-02-20.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, ListDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var myProducts: [Product] = [Product(name: "carlos", cartao: "123456789", pedido: "PS5"), Product(name: "Felipe", cartao: "987654321", pedido: "MacBook")]

    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func add(order: Product) {
        myProducts.append(order)
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        
        switch identifier {
        case "showOrder":
            print(myProducts[0].pedido)
            let vc = segue.destination as? OrderDetailsController
            guard let product = sender as? Product else {
                return
            }
            vc?.setProduct(product: product)
        case "showEditUser":
            let vc = segue.destination as? UserController
            vc?.setUser(user: user)
        case "showCheckout":
            let vc = segue.destination as? ProductsController
            vc?.setDelegate(delegate: self)
            vc?.setUser(user: user)
        default:
            break
        }
    }
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showOrder", sender: myProducts[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if let labelOrderThings = cell.viewWithTag(22) as? UILabel,
            let labelOrderStatus = cell.viewWithTag(44) as? UILabel {
            
            labelOrderThings.text = myProducts[indexPath.row].pedido // Aqui vai nome do pedido, data..
//            labelOrderStatus.text = "" // Aqui vai o status do pedido
        }

        return cell
    }
}
