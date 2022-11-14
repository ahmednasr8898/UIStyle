//
//  File.swift
//  
//
//  Created by Semicolon on 10/10/2022.
//

import UIKit

//MARK: - Custom View
//
@IBDesignable
public class CustomView: UIView {
    
    //MARK: - Corner Radius
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

//MARK: - border color
//
extension CustomView {
    @IBInspectable var borderColor: UIColor {
        get {
            return UIColor()
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}

//MARK: - border width
//
extension CustomView {
    @IBInspectable var borderWidth: CGFloat {
        get {
            return CGFloat()
        }
        set {
            layer.borderWidth = newValue
        }
    }
}

