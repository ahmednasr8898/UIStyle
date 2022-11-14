//
//  File.swift
//  
//
//  Created by Semicolon on 12/10/2022.
//

import UIKit

//MARK: - handle keyboard with starting write in text field -
//
extension UITextField {
    @available(iOS 14.0, *)
    public func handleKeyboard(view: UIView) {
        self.addAction(UIAction(handler: { _ in
            if view.frame.origin.y == 0 {
                view.frame.origin.y -= view.frame.height * 0.1
            }
        }), for: .editingDidBegin)
        
        self.addAction(UIAction(handler: { _ in
            if view.frame.origin.y != 0 {
                view.frame.origin.y = 0
            }
        }), for: .editingDidEnd)
    }
}


//MARK: - handle keyboard with starting write in text field with scroll view -
//
extension UITextField {
    @available(iOS 14.0, *)
    public func handleKeyboardWithScroll(view: UIView, scrollView: UIScrollView) {
        self.addAction(UIAction(handler: { _ in
            if view.frame.origin.y == 0 {
                let positionY = self.frame.origin.y
                scrollView.setContentOffset(CGPoint(x: 0, y: positionY), animated: true)
            }
        }), for: .editingDidBegin)
        
        self.addAction(UIAction(handler: { _ in
            scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        }), for: .editingDidEnd)
    }
}


//MARK: - dismiss keyboard with return key in keyboard -
//
extension UITextField {
    @available(iOS 14.0, *)
    public func dismisskeyboardWithReturnKey() {
        self.addAction(UIAction(handler: { _ in
            self.endEditing(true)
        }), for: .primaryActionTriggered)
    }
}


//MARK: - show / hidden password -
//
extension UITextField {
    
    @available(iOS 13.0, *)
    public func enablePasswordToggle() {
        let button = UIButton(type: .custom)
        setPasswordToggleImage(button)
        button.imageView?.tintColor = UIColor(named: "darkBlue") ?? UIColor()
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: -20)
//        button.frame = CGRect(x: CGFloat(self.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        button.addTarget(self, action: #selector(self.togglePasswordView), for: .touchUpInside)
        self.rightView = button
        self.rightViewMode = .always
    }
    
    @available(iOS 13.0, *)
    private func setPasswordToggleImage(_ button: UIButton) {
        if(isSecureTextEntry) {
            button.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }else {
            button.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        }
    }
    
    @available(iOS 13.0, *)
    @objc private func togglePasswordView(_ sender: Any) {
        self.isSecureTextEntry = !self.isSecureTextEntry
        setPasswordToggleImage(sender as! UIButton)
    }
}


//MARK: - bottom border to text field -
//
extension UITextField {
    public func addBottomBorder(borderColor: UIColor = UIColor(named: "darkBlue") ?? UIColor()) {
        let myLayer = CALayer()
       myLayer.backgroundColor = borderColor.cgColor
       myLayer.frame = CGRect(x: 0.0, y: self.frame.size.height - 2.0, width: self.frame.size.width, height: 2.0)
       self.layer.addSublayer(myLayer)
    }
}


//MARK: - create date picker -
//
extension UITextField {
    @available(iOS 13.4, *)
    public func createDatePickerView(datePicker: UIDatePicker, action: Selector, vc: UIViewController) {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: vc, action: action)
        doneButton.tintColor = UIColor(named: "darkBlueOp") ?? UIColor()
        toolBar.setItems([doneButton], animated: true)
        self.becomeFirstResponder()
        self.inputAccessoryView = toolBar
        self.inputView = datePicker
        datePicker.tintColor = UIColor(named: "darkBlueOp") ?? UIColor()
        datePicker.maximumDate = Date()
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
    }
}
