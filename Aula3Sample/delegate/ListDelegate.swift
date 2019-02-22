//
//  ListDelegate.swift
//  Aula3Sample
//
//  Created by LOWCOST on 21/02/2019.
//  Copyright © 2019 Mocka. All rights reserved.
//

import Foundation

@objc protocol ListDelegate {
    @objc optional func add(order: Product)
}
