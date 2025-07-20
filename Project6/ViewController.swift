//
//  ViewController.swift
//  Project6
//
//  Created by Christo Payne on 7/15/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var eurSwitch: UISwitch!
    @IBOutlet weak var cadSwitch: UISwitch!
    @IBOutlet weak var jpySwitch: UISwitch!
    @IBOutlet weak var audSwitch: UISwitch!
    @IBOutlet weak var amountField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amountField.keyboardType = .decimalPad
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    var currency: Currency!
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        
        if(amountField.text != "") {
            
            self.performSegue(withIdentifier: "toCurrencyDisplay", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "toCurrencyDisplay") {
            let currencyDisplay = segue.destination as! CurrencyDisplayController
            guard let text = amountField.text, let amount = Double(text) else {
            
                //This should never happen because the user is only prompted with a decimal keyboard but just in case.
                 print("Invalid input")
                 return
             }
            currencyDisplay.amount = amount
            currencyDisplay.jpy = jpySwitch.isOn
            currencyDisplay.eur = eurSwitch.isOn
            currencyDisplay.cad = cadSwitch.isOn
            currencyDisplay.aud = audSwitch.isOn
                        
            
        }
    }
    


}

