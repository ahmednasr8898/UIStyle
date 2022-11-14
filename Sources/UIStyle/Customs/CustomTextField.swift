//
//  File.swift
//  
//
//  Created by Semicolon on 10/10/2022.
//

import UIKit

//MARK: - Custom Text Field
@IBDesignable
public class CustomTextField: UITextField {
    
    // MARK: - Life Cycle Methods
    //
    public override func awakeFromNib() {
        super.awakeFromNib()
        adjustsFontSizeToFitDevice()
    }
    
    
    //MARK: - Padding
    //
    let padding = UIEdgeInsets(top: 0, left: 18, bottom: 0, right: 18)
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}

// MARK: - Corner Radius
extension CustomTextField {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return CGFloat()
        }
        set {
            return layer.cornerRadius = newValue
        }
    }
}
