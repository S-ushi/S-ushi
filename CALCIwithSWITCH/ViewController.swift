//
//  ViewController.swift
//  mycalci
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNmuber: Double = 0
    var performMath = false
    var operation = 0
    
    
    @IBOutlet weak var calcLable: UILabel!
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLable.text != "" && sender.tag != 16 && sender.tag != 15
        {
            previousNmuber = Double(calcLable.text!)!
            if sender.tag==11
            {
                calcLable.text = "+"
            }
            else if sender.tag==12
            {
                calcLable.text = "-"
            }
            else if sender.tag==13
            {
                calcLable.text = "/"
            }
            else if sender.tag==14
            {
                calcLable.text = "*"
            }
            operation = sender.tag
            performMath = true
        }
        else if sender.tag == 16{
            switch(operation)
            {
            case 11:
                calcLable.text =  String(previousNmuber+numberOnScreen)
            
            case 12:
                calcLable.text = String(previousNmuber-numberOnScreen)
            
            case 13:
                calcLable.text = String(previousNmuber/numberOnScreen)
            
            case 14:
                calcLable.text = String(previousNmuber*numberOnScreen)
            default:
                calcLable.text = "error"
            }
        }
        else if sender.tag == 15{
            calcLable.text = ""
            previousNmuber=0
            numberOnScreen=0
            operation = 0
        }
        
    }
    
    @IBAction func operandBtn(_ sender: UIButton) {
        if performMath == true{
            calcLable.text = String(sender.tag-1)
            numberOnScreen = Double(calcLable.text!)!
            performMath = false
            }
        else{
        calcLable.text = calcLable.text! + String(sender.tag-1)
        numberOnScreen = Double(calcLable.text!)!
    }
    }
    
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

