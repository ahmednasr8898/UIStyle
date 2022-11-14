//
//  File.swift
//  
//
//  Created by Semicolon on 13/10/2022.
//

import Foundation

//MARK: - localized string
//
extension String {
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

//MARK: - convert html to string
//
extension String {
    public var html2AttributedString: String? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil).string
            
        } catch let error as NSError {
            print(error.localizedDescription)
            return  nil
        }
    }
}

//MARK: - Time format 24 hours to 12 hours
//
extension String {
    public var convertTo12Hours: String? {
        let dateAsString = self
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        
        let date = dateFormatter.date(from: dateAsString)
        dateFormatter.dateFormat = "h:mm a"
        let Date12 = dateFormatter.string(from: date!)
        
        return Date12
    }
}

//MARK: - convert date
//
extension String {
    public var convertDate: String? {
        let dateAsString = self
        let dateFormatter = DateFormatter()
        //2022-10-18 10:13:17
        //"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let date = dateFormatter.date(from: dateAsString)
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let Date12 = dateFormatter.string(from: date!)
        
        return Date12
    }
}


