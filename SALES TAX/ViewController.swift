//
//  ViewController.swift
//  umang
//
//  Created by APPLE on 01/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TotalPriceTax: UILabel!
    @IBOutlet weak var SalesTax: UITextField!
    @IBOutlet weak var PriceTax: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTotalPrice(_ sender: Any) {
        
        let price=Double(PriceTax.text!)!
        let salestax=Double(SalesTax.text!)!
        let totalSalesTax=price*salestax
        let totalPrice=price+totalSalesTax
        
        TotalPriceTax.text="$\(totalPrice)"
    }
}

