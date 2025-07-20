//
//  CurrencyLogic.swift
//  Project6
//
//  Created by Christo Payne on 7/15/25.
//


struct CurrencyLogic {
    
    
    init(_ currency : Currency) {
        self.currency = currency
    }
    var currency : Currency

    
    //getters
    mutating func getUSD() -> Double {
        return currency.amount
    }
    mutating func getAUD() -> Double {
        return currency.amount * 1.53
    }
    
    mutating func getJPY() -> Double {
        return currency.amount * 148.87
    }
    
    mutating func getEUR() -> Double {
        return currency.amount * 0.86
    }
    
    mutating func getCAD() -> Double {
        return currency.amount * 1.37
    }

    
}
