//
//  ViewController.swift
//  calculate
//
//  Created by Mehran Sahandi on 12.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WageTxt: CurrencyTxtField!
    
    @IBOutlet weak var PriceTxt: CurrencyTxtField!
    
    @IBOutlet weak var ResultLBL: UILabel!
    @IBOutlet weak var HoursLbl: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // cust BTN for calc
    let CalcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        CalcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        CalcBtn.setTitle("Calculate", for: .normal)
        CalcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        CalcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        WageTxt.inputAccessoryView = CalcBtn
        PriceTxt.inputAccessoryView = CalcBtn
    
        ResultLBL.isHidden = true
        HoursLbl.isHidden = true
    }
    
    @objc func calculate (){
        
        if let WageTxt=WageTxt.text , let PriceTxt = PriceTxt.text {
            if let Wage = Double(WageTxt), let Price = Double(PriceTxt) {
                
                view.endEditing(true)
                ResultLBL.isHidden=false
                HoursLbl.isHidden=false
                ResultLBL.text = "\(wage.gethourse(forwage: Wage, andprice: Price))"
            }
            
            
        }
        
    }
    
    
    @IBAction func ClearBtnPressed(_ sender: Any) {
        ResultLBL.isHidden = true
        HoursLbl.isHidden = true
        WageTxt.text = ""
        PriceTxt.text = ""
    }
    
}

