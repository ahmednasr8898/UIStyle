//
//  File.swift
//  
//
//  Created by Semicolon on 18/10/2022.
//

import UIKit

//MARK: - check status button
//
extension UIButton {
    public func checkStatusButton(isEnable: Bool) {
        self.isEnabled = isEnable
        if isEnable {
            self.backgroundColor = UIColor(named: "darkBlue") ?? UIColor(named: "darkBlue") ?? UIColor()
        }else {
            self.backgroundColor = .lightGray
        }
    }
}
