//
//  Extensions.swift
//  TeslaViewer
//
//  Created by Tyler Phillips on 4/5/18.
//  Copyright © 2018 Tyler Phillips. All rights reserved.
//

import Foundation
import UIKit

extension UILabel{
    
    static func label() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next", size: 25.0)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        label.textColor = UIColor.white
        label.isUserInteractionEnabled = false
        
        return label
    }
}

extension UIButton{
    
    static func btn() -> UIButton {
        let btn = UIButton()
        btn.setTitle("Home", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        
        return btn
    }
    
}

extension UITextField {
    
    static func text() -> UITextField {
        let text = UITextField()
        text.textColor = UIColor.white
        text.font = UIFont(name: "Avenir Next", size: 20.0)
        text.backgroundColor = UIColor.black
        text.alpha = 0.4
        text.borderStyle = UITextBorderStyle.roundedRect
        text.layer.cornerRadius = -5
        text.autocorrectionType = UITextAutocorrectionType.no
        text.keyboardType = UIKeyboardType.default
        text.returnKeyType = UIReturnKeyType.done
        text.clearButtonMode = UITextFieldViewMode.whileEditing
        text.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }

}

