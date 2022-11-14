//
//  File.swift
//  
//
//  Created by Semicolon on 11/10/2022.
//

import UIKit

//MARK: - Custom Label
//
@IBDesignable
public class CustomLabel: UILabel {
    
    // MARK: - Life Cycle Methods
    //
    public override func awakeFromNib() {
        super.awakeFromNib()
        adjustsFontSizeToFitDevice()
    }
}
