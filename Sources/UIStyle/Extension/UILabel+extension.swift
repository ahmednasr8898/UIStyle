//
//  File.swift
//  
//
//  Created by Semicolon on 02/11/2022.
//

import UIKit

//MARK: - secure label text
//
extension UILabel {
    public func secureLabel() {
        let textCount = self.text?.count ?? 0
        
        self.text = ""
        for _ in 0..<textCount {
            self.text?.append("#")
        }
    }
}
