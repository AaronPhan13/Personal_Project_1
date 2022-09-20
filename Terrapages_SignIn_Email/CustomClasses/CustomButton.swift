//
//  CustomButton.swift
//  Terrapages_SignIn_Email
//
//  Created by Terrapages on 20/9/2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomButton : UIButton {
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColour: UIColor? = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0) {
        didSet {
            layer.borderColor = borderColour?.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0) {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowColour: UIColor? = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0) {
        didSet {
            layer.shadowColor = shadowColour?.cgColor
        }
    }
}
