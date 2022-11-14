//
//  File.swift
//  
//
//  Created by Semicolon on 31/10/2022.
//

import UIKit


//MARK: - create no result message if table view is empty -
//
extension UITableView {
    public func setNoResultMessage(title: String) {
        let lblMessage = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        lblMessage.text = title
        lblMessage.textColor = UIColor(named: "darkBlue")
        lblMessage.numberOfLines = 0
        lblMessage.textAlignment = .center
        lblMessage.font = UIFont(name: "Helvetica-Bold", size: 20)
        lblMessage.sizeToFit()

        self.backgroundView = lblMessage
        self.separatorStyle = .none
    }

    func clearBackground() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}

//MARK: - check if date in table view is empty -
//
extension UITableView {
    public func checkIfNoDataFounded(title: String = "No Data Available Now".localized , countOfData: Int){
        if countOfData == 0 {
            self.setNoResultMessage(title: title)
        }else{
            self.clearBackground()
        }
    }
}
