//
//  File.swift
//  
//
//  Created by Semicolon on 10/10/2022.
//

import UIKit

//MARK: - Custom Button
//
@IBDesignable
public class CustomButton: UIButton {
    
    // MARK: - Life Cycle Methods
    //
    public override func awakeFromNib() {
        super.awakeFromNib()
        adjustsFontSizeToFitDevice()
    }
    
    // MARK: - Corner Radius
    //
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return CGFloat()
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
