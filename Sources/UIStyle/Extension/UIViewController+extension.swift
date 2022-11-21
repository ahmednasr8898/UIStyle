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

//MARK: - share pdf file -
//
extension UIViewController {
    public func sharePDF(filePath: String) {
        let url = URL(fileURLWithPath: filePath)
        let activityViewController: UIActivityViewController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        let excludedActivities = [UIActivity.ActivityType.postToFlickr, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.message, UIActivity.ActivityType.mail, UIActivity.ActivityType.print, UIActivity.ActivityType.copyToPasteboard, UIActivity.ActivityType.assignToContact, UIActivity.ActivityType.saveToCameraRoll, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.postToFlickr, UIActivity.ActivityType.postToVimeo,UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToTencentWeibo]
        
        activityViewController.excludedActivityTypes = excludedActivities
        activityViewController.popoverPresentationController?.sourceView=self.view
        
        //If user on iPad
        if UIDevice.current.userInterfaceIdiom == .pad {
            if activityViewController.responds(to: #selector(getter: UIViewController.popoverPresentationController)) {
            }
        }
        present(activityViewController, animated: true, completion: nil)
    }
}
