//
//  File.swift
//  
//
//  Created by Semicolon on 24/10/2022.
//

import UIKit

//MARK: - curved top view
//
public class CurvedView: UIView {
    
    public override func draw(_ rect: CGRect) {
        let color = UIColor.white
        let y:CGFloat = -self.frame.height * 0.999 //-194
        let myBezier = UIBezierPath()
        myBezier.move(to: CGPoint(x: 0, y: y))
        myBezier.addQuadCurve(to: CGPoint(x: rect.width, y: y), controlPoint: CGPoint(x: rect.width / 2, y: rect.height + /*78*/ self.frame.height * 0.33))
        myBezier.addLine(to: CGPoint(x: rect.width, y: rect.height))
        myBezier.addLine(to: CGPoint(x: 0, y: rect.height))
        myBezier.close()
        color.setFill()
        myBezier.fill()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
}
