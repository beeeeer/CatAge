//
//  ViewController.swift
//  AgeofCat
//
//  Created by Adam Nowak on 01.06.2015.
//  Copyright (c) 2015 NowakAdam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var catYearLabel: UILabel!
    
    @IBOutlet weak var humanYearTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertButton(sender: UIButton) {
        
    let yearTextField = Double((humanYearTextField.text as NSString).doubleValue)
    let catYearsFirstYear:Double = 15
    let catYearsSecondYear:Double = 24
        catYearLabel.hidden = false
        
     
        
    if yearTextField < 2 {
             catYearLabel.text = "Your cat is " + "\(catYearsFirstYear)" + " human years old"
        }
    else if (yearTextField < 3) && (yearTextField > 1)
        {
           catYearLabel.text = "Your cat is " + "\(catYearsSecondYear)" + " human years old"
        }
    else {
        var  catYearAddNext = ( yearTextField - 2 ) * 4
            catYearLabel.text = "Your cat is " + "\(catYearsSecondYear + catYearAddNext)" + " human years old"
        }
        
        
        
        
        
      
        humanYearTextField.resignFirstResponder()
        
        
    }

}

