//
//  ViewController.swift
//  calculator1
//
//  Created by Aleksandr Luchinin on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var checkNumber: Bool = false
    var equalsNumber: Int = 0
    
    @IBOutlet weak var numberRezult: UILabel!
    @IBAction func numbersButton(_ sender: UIButton) {
        
        let tagButton = sender.tag
        
        if checkNumber == true {
            numberRezult.text = String(tagButton)
            checkNumber = false
        } else {
            numberRezult.text = numberRezult.text! + String(tagButton)
        }
        secondNumber = Double(numberRezult.text!)!
    }
    
    @IBAction func assignmentButtons(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        
        if numberRezult.text != "" && tagButton != 10 && tagButton != 17 {
            firstNumber = Double(numberRezult.text!)!
        }
        
        
        if tagButton == 10 {
            numberRezult.text = ""
        }
        
        if tagButton == 13 {
            numberRezult.text = "/"
            equalsNumber = tagButton
            checkNumber = true
            
        } else if tagButton == 14 {
            numberRezult.text = "*"
            equalsNumber = tagButton
            checkNumber = true
            
        } else if tagButton == 15 {
            numberRezult.text = "+"
            equalsNumber = tagButton
            checkNumber = true
            
        } else if tagButton == 16 {
            numberRezult.text = "-"
            equalsNumber = tagButton
            checkNumber = true
            
        } else if tagButton == 17 {
            
            if equalsNumber == 13 {
                numberRezult.text = String(firstNumber / secondNumber)
            }  else if equalsNumber == 14 {
                numberRezult.text = String(firstNumber * secondNumber)
                
            } else if equalsNumber == 15 {
                numberRezult.text = String(firstNumber + secondNumber)
                
            } else if equalsNumber == 16 {
                numberRezult.text = String(firstNumber - secondNumber)
            }
            
            func viewDidLoad() {
                super.viewDidLoad()
            }
        }
        
    }
    
    
}

