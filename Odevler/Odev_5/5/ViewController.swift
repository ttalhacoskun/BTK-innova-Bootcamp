//
//  ViewController.swift
//  5
//
//  Created by Talha Coşkun on 25.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelİslem: UILabel!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var buttonArtiEksi: UIButton!
    @IBOutlet weak var buttonYuzde: UIButton!
    @IBOutlet weak var buttonEksi: UIButton!
    @IBOutlet weak var buttonCarpi: UIButton!
    @IBOutlet weak var buttonBolme: UIButton!
    
    //sdfdsf
    var workings : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
        buttonArtiEksi.alpha = 0.2
        buttonEksi.alpha = 0.2
        buttonBolme.alpha = 0.2
        buttonCarpi.alpha = 0.2
        buttonYuzde.alpha = 0.2
        
        
        buttonArtiEksi.isEnabled = true
        buttonEksi.isEnabled = true
        buttonCarpi.isEnabled = true
        buttonBolme.isEnabled = true
        buttonYuzde.isEnabled = true
        
    }
    
    func clearAll() {
        
        workings = ""
        labelİslem.text = ""
        labelSonuc.text = ""
    }
    
    
    @IBAction func buttonEsittir(_ sender: Any) {
               if(validInput())
               {
                   let expression = NSExpression(format: workings)
                   let result = expression.expressionValue(with: nil, context: nil) as! Double
                   let resultString = formatResult(result: result)
                   labelSonuc.text = resultString
               }
               else
               {
                   let alert = UIAlertController(
                       title: "Invalid Input",
                       message: "Calculator unable to do math based on input",
                       preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "Okay", style: .default))
                   self.present(alert, animated: true, completion: nil)
               }
           }
    func validInput() -> Bool
     {
         var count = 0
         var funcCharIndexes = [Int]()
         
         for char in workings
         {
             if(specialCharacter(char: char))
             {
                 funcCharIndexes.append(count)
             }
             count += 1
         }
         
         var previous: Int = -1
         
         for index in funcCharIndexes
         {
             if(index == 0)
             {
                 return false
             }
             
             if(index == workings.count - 1)
             {
                 return false
             }
             
             if (previous != -1)
             {
                 if(index - previous == 1)
                 {
                     return false
                 }
             }
             previous = index
         }
         
         return true
     }
    func specialCharacter (char: Character) -> Bool
     {
         if(char == "+") 
         {
             return true
         }
         return false
     }
     
     func formatResult(result: Double) -> String
     {
         if(result.truncatingRemainder(dividingBy: 1) == 0)
         {
             return String(format: "%.0f", result)
         }
         else
         {
             return String(format: "%.2f", result)
         }
     }
    
    @IBAction func buttonAllClear(_ sender: Any) {
        
        clearAll()
    }
    
    func addToWorkings(value: String)
      {
          workings = workings + value
          labelİslem.text = workings
      }
    
    @IBAction func buttonToplama(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    
    @IBAction func button1(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    @IBAction func button2(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func button3(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func button4(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    @IBAction func button5(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func button6(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func button7(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    @IBAction func button8(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func button9(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    @IBAction func button0(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    
    
}

