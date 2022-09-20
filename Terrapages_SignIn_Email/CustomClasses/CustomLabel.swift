//
//  CustomLabelField.swift
//  Terrapages_SignIn_Email
//
//  Created by Terrapages on 20/9/2022.
//

import Foundation
import UIKit

@IBDesignable
class CustomLabel : UILabel {
    
    @IBInspectable var leftOffset : CGFloat = 0 {
        didSet {
            layoutIfNeeded()
        }
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.insetBy(dx: leftOffset, dy: 0))
    }
}
