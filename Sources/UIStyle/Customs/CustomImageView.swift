//
//  File.swift
//  
//
//  Created by Semicolon on 13/10/2022.
//

import UIKit

//MARK: - Custom Image View
//
@IBDesignable
public class CustomImageView: UIImageView{

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

