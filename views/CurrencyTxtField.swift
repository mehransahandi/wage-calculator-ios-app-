//
//  CurrencyTxtField.swift
//  calculate
//
//  Created by Mehran Sahandi on 12.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        designview()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        designview()
        
    }
    
    func designview (){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        
        if let p = placeholder{
            
            
            let place = NSAttributedString(string: p, attributes: [NSAttributedStringKey.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder=place
            
        }
        
    }
    

}
