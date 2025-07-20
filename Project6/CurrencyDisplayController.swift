//
//  CurrencyDisplayController.swift
//  Project6
//
//  Created by Christo Payne on 7/15/25.
//

import UIKit

class CurrencyDisplayController: UIViewController {
    
    
    var welcome = ""
    var amount : Double = 0
    var jpy : Bool = false
    var eur : Bool = false
    var cad : Bool = false
    var aud : Bool = false


    //USD
    
    @IBOutlet weak var usdLabel: UILabel!
    
    //JPY
    @IBOutlet weak var jpyTextLabel: UILabel!
    @IBOutlet weak var jpyAmountLabel: UILabel!
    
    
    //EUR
    @IBOutlet weak var eurTextLabel: UILabel!
    @IBOutlet weak var eurAmountLabel: UILabel!
    
    //CAD
    @IBOutlet weak var cadTextLabel: UILabel!
    @IBOutlet weak var cadAmountLabel: UILabel!
    
    //AUD
    @IBOutlet weak var audTextLabel: UILabel!
    @IBOutlet weak var audAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currency = Currency(aud, jpy, cad, eur, amount)
        var logic = CurrencyLogic(currency)
        
        if(!jpy) {
            jpyTextLabel.isHidden = true
            jpyAmountLabel.isHidden = true
        }
        if(!eur) {
            eurTextLabel.isHidden = true
            eurAmountLabel.isHidden = true
        }
        if(!cad) {
            cadTextLabel.isHidden = true
            cadAmountLabel.isHidden = true
        }
        if(!aud) {
            audTextLabel.isHidden = true
            audAmountLabel.isHidden = true
        }
        
        usdLabel.text = "USD: $\(logic.getUSD())"
        jpyAmountLabel.text = "¥\(logic.getJPY())"
        eurAmountLabel.text = "€\(logic.getEUR())"
        cadAmountLabel.text = "C$\(logic.getCAD())"
        audAmountLabel.text = "A$\(logic.getAUD())"
        
    }
    
    @IBAction func returnButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "toHomeScreen", sender: self)
        
    }
    

    
    

    
    
    

}
