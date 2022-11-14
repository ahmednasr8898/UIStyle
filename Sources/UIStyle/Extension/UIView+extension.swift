//
//  File.swift
//  
//
//  Created by Semicolon on 13/10/2022.
//

import UIKit

//MARK: - animation with view
//
extension UIView {
    public func animated() {
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn) {
            
            self.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        } completion: { _ in
            UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn) {
                
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            } completion: { _ in
            }
        }
    }
}


//MARK: - shadow with view
//
extension UIView {
    public func shadowWithView(shadowColor: UIColor = UIColor(named: "darkBlueOp") ?? UIColor(), shadowOffset: CGSize = CGSize(width: 1, height: 1), shadowOpacity: Float = 0.5, shadowRadius: CGFloat = 1) {
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.masksToBounds = false
    }
}

//MARK: - convert view to circle progress bar
//
extension UIView {
    public func makeCircleProgressBar(timer: Double) {
        let shapeLayer = CAShapeLayer()
        
        let arcCenter = CGPoint(x: self.frame.midX, y: 160)
        let circularPath = UIBezierPath(arcCenter: arcCenter, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi * 2, clockwise: true)
      
        let trackLayer = CAShapeLayer()
        trackLayer.path = circularPath.cgPath
        self.layer.addSublayer(trackLayer)
        trackLayer.strokeColor = UIColor(named: "darkBlue")?.cgColor ?? UIColor.blue.cgColor
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineWidth = 6
        
        
        shapeLayer.path = circularPath.cgPath
        
        self.layer.addSublayer(shapeLayer)
        shapeLayer.strokeColor = UIColor(named: "lightRed")?.cgColor ?? UIColor.red.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.lineWidth = 6
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = .round
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = CFTimeInterval(timer)
        basicAnimation.fillMode = .forwards
        basicAnimation.isRemovedOnCompletion = false
        shapeLayer.add(basicAnimation, forKey: "urBasic")
    }
}


//MARK: - create footer not data for table view
//
extension UIView {
    public func createFooterNoMoreData() -> UIView{
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: 80))
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: 50))
        label.text = "NoMoreResults".localized
        label.textColor = UIColor(named: "darkBlueOp") ?? UIColor.blue
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.textAlignment = .center
        footerView.addSubview(label)
        return footerView
    }
}
