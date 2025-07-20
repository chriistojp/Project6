//
//  Currency.swift
//  Project6
//
//  Created by Christo Payne on 7/15/25.
//




struct Currency {
    
    
    var aud: Bool
    var jpy: Bool
    var eur: Bool
    var cad: Bool
    var amount : Double
    
    init(_ aud: Bool, _ jpy: Bool , _ cad: Bool, _ eur: Bool, _ amount: Double) {
        self.aud = aud
        self.jpy = jpy
        self.cad = cad
        self.eur = eur
        self.amount = amount
    }

    

    
}
