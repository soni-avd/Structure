//
//  MyModel.swift
//  Navigation
//
//  Created by Сони Авдеева on 12/7/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import Foundation

class MyModel {
     var password = "Press"
    
    func check(word: String) -> Bool {
        print("print")
        if word == password {
            return true
        } else {
            return false
        }   }
}
