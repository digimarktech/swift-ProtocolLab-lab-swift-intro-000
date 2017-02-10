//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool
    
}

class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        
        var amountOfEvens = 0
        
        if password.isEmpty {
            
            return false
        }
        
        if password.count > 10 {
            
            return false
        }
        
        for i in 0 ..< password.count {
            
            if i % 2 == 0 {
                
                if password[i] % 2 == 0 {
                    
                    amountOfEvens += 1
                }
            }
        }
        
        if password.count % 2 != 0 {
            
            if amountOfEvens == (password.count + 1) / 2 {
                
                return true
            }
            
        } else {
            
            if amountOfEvens == password.count  / 2 {
                
                return true
            }
        }
        
        
        
        return false
    }
}





