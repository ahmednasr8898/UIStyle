//
//  File.swift
//  
//
//  Created by Semicolon on 11/10/2022.
//

import UIKit

//MARK: - for dismiss Keyboard when tapped In View
//
extension UIViewController{
    public func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

//MARK: - add Tap Gesture To View
//
extension UIViewController {
    public func addTapGestureToView(view: UIView, action: Selector?) {
        let tap = UITapGestureRecognizer(target: self, action: action)
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tap)
    }
}

//MARK: - add right bar button item
//
extension UIViewController {
    public func addBarButtonItem(image: UIImage, action: Selector) {
        let barButton = UIBarButtonItem(image: image, style: .done, target: self, action: action)
        navigationItem.rightBarButtonItem = barButton
    }
}

//MARK: - hidden / show views
//
extension UIViewController {
    public func hiddenMultipleViews(views: [UIView], isHidden: Bool = true) {
        for view in views {
            view.isHidden = isHidden
        }
    }
}
