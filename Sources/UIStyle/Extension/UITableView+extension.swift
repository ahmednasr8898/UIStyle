//
//  File.swift
//  
//
//  Created by Semicolon on 31/10/2022.
//

import UIKit
import PDFKit

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


//MARK: - create pdf from table view -
//
extension UITableView {
    func exportAsPdfFromTable() -> String {
        
        let originalBounds = self.bounds
        self.bounds = CGRect(x:originalBounds.origin.x, y: originalBounds.origin.y, width: self.contentSize.width, height: self.contentSize.height)
        let pdfPageFrame = CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.contentSize.height)
        
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageFrame, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageFrame, nil)
        guard let pdfContext = UIGraphicsGetCurrentContext() else { return "" }
        self.layer.render(in: pdfContext)
        UIGraphicsEndPDFContext()
        self.bounds = originalBounds
        return self.saveTablePdf(data: pdfData)
    }
    
    func saveTablePdf(data: NSMutableData) -> String {
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docDirectoryPath = paths[0]
        let pdfPath = docDirectoryPath.appendingPathComponent("InfoDetails.pdf")
        if data.write(to: pdfPath, atomically: true) {
            return pdfPath.path
        } else {
            return ""
        }
    }
}
