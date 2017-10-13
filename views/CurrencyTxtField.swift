//
//  CurrencyTxtField.swift
//  calculate
//
//  Created by Mehran Sahandi on 12.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit
@IBDesignable // view instantly
class CurrencyTxtField: UITextField {
    
    
    // currency design for text field
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let CurrencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size))
        CurrencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2549515845)
        CurrencyLbl.textAlignment = .center
        CurrencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        CurrencyLbl.layer.cornerRadius = 5.0
        clipsToBounds = true
        let former = NumberFormatter()
        former.numberStyle = .currency
        former.locale = .current
        CurrencyLbl.text = former.currencySymbol
        addSubview(CurrencyLbl)
        
        
    }

    override func prepareForInterfaceBuilder() {
        designview()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        designview()
        
    }
    
    // design for textfield place holder.
    func designview (){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        clipsToBounds = true
        
        
        
        if let p = placeholder{
            
            
            let place = NSAttributedString(string: p, attributes: [NSAttributedStringKey.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder=place
            
        }
        
    }
    

}
