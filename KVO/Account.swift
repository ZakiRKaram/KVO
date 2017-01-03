//
//  Account.swift
//  KVO
//
//  Created by Marius Horga on 9/13/15.
//  Copyright (c) 2015 Marius Horga. All rights reserved.
//

import UIKit
       
let currentBalanceKeyPath = "currentBalance"

class Account: NSObject {
    let startingBalance = 100.0
    var currentBalance = 0.0
    
    override init() {
        super.init()
        currentBalance = startingBalance
    }
    
    func update(amount: Double) {
        currentBalance += amount
        setValue(currentBalance, forKeyPath: currentBalanceKeyPath)
    }
}
