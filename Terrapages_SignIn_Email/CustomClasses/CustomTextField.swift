//
//  CustomTextField.swift
//  Terrapages_SignIn_Email
//
//  Created by Terrapages on 20/9/2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0) {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var placeholderTextColor: UIColor? = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) {
        didSet {
            setValue(placeholderTextColor, forKeyPath: "placeholderLabel.textColor")
        }
    }
    
    @IBInspectable var leftOffset : CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    @IBInspectable var topOffset : CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: leftOffset, dy: topOffset)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: leftOffset, dy: topOffset)
    }
}
