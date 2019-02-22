//
//  UserController.swift
//  Aula3Sample
//
//  Created by LOWCOST on 22/02/2019.
//  Copyright © 2019 Mocka. All rights reserved.
//

import UIKit

class UserController : UIViewController {
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let user = user else {
            return
        }
        
        textName.text! = user.name
        textEmail.text! = user.email
        textCard.text! = user.cartao
    }
    
    func setUser(user: User) {
        self.user = user
    }
    
    @IBOutlet weak var textCard: UITextField!
    
    @IBOutlet var textName: UITextField!
    
    @IBOutlet var textEmail: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        
        user?.name = textName.text!
        user?.email = textEmail.text!
        user?.cartao = textCard.text!
        
        navigationController?.popViewController(animated: true)
    }
}
