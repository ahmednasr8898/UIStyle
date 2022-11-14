//
//  File.swift
//  
//
//  Created by Semicolon on 13/10/2022.
//

import UIKit

@available(iOS 13.0, *)
public struct Indicator {
    
    static let indicator = UIActivityIndicatorView(style: .large)
    @available(iOS 13.0, *)
    public static func createIndicator(on vc: UIViewController, start: Bool) {
        indicator.center = vc.view.center
        indicator.color = UIColor(named: "darkBlue") ?? .red
        vc.view.addSubview(indicator)
        if start {
            indicator.startAnimating()
        }else {
            indicator.stopAnimating()
        }
    }
}
