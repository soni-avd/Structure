//
//  Checker.swift
//  Navigation
//
//  Created by Сони Авдеева on 18/6/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class Checker {
    
    static let shared = Checker()
    private let login = "Major Tom"
    private let password = "StrongPassword"
    
    func checkLoginAndPassword(login: String, password: String) -> Bool {
        if login == login, password == password {
            return true
        } else {
            return false
        }
        
        
    }
}
