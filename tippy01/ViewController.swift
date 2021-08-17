//
//  ViewController.swift
//  tippy01
//
//  Created by Bryan Kuo on 2021/8/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountPriceText: UITextField!
    @IBOutlet weak var tipPercentageText: UITextField!
    @IBOutlet weak var peopleText: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var averagePayLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func finishTyping(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func calcuateAmount(_ sender: UITextField) {
        let amountPrice = Double(amountPriceText.text!) ?? 0
        let tipPercentage = Double(tipPercentageText.text!) ?? 0
        let people = Double(peopleText.text!) ?? 0
        
        let tipsAmount = amountPrice * tipPercentage / 100
        let totalAmount = tipsAmount + amountPrice
        let payAmount = totalAmount / people
        
        tipAmountLabel.text = String(format: "$%.0f", tipsAmount)
        totalAmountLabel.text = String(format: "$%.0f", totalAmount)
        averagePayLabel.text = String(format: "$%.0f", payAmount)
        
        
    }
    
    
}

