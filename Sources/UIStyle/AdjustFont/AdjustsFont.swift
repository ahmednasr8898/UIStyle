//
//  File.swift
//  
//
//  Created by Semicolon on 12/10/2022.
//

import UIKit

enum devices {
    case iPhone8
    case iPhone8Plus
    case iPhone11
    case iPhone11Pro
    case iPhone11ProMax
    case iPhone12ProMax
    case iPhone12Mini
    case iphone12
    case iPhone14Pro
    case iPhone14ProMax
    case iPad
    case none
}

extension UIDevice {
    func modelDevice()-> devices {
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 1334:
                return .iPhone8
            case 1920:
                return .iPhone8Plus
            case 1792:
                return .iPhone11
            case 2436:
                return .iPhone11Pro
            case 2688 :
                return .iPhone11ProMax
            case 2778:
                return .iPhone12ProMax
            case 2340:
                return .iPhone12Mini
            case 2532 :
                return .iphone12
            case 2556:
                return .iPhone14Pro
            case 2796:
                return .iPhone14ProMax
            default:
                return .none
            }
        }else {
            return .iPad
        }
    }
}

//detect with iphone12 (2532)
//MARK: - UILabel
//
extension UILabel {
    func adjustsFontSizeToFitDevice() {
        switch UIDevice().modelDevice() {
        case .iPhone8://1334
            font = font.withSize(font.pointSize - 1.5)
        case .iPhone8Plus://1920
            font = font.withSize(font.pointSize - 0.5)
        case .iPhone11://1792
            font = font.withSize(font.pointSize - 0.5)
        case .iPhone11Pro://2436
            font = font.withSize(font.pointSize)
        case .iPhone11ProMax://2688
            font = font.withSize(font.pointSize + 0.5)
        case .iPhone12ProMax://2778
            font = font.withSize(font.pointSize + 1)
        case .iPhone12Mini://2340
            font = font.withSize(font.pointSize - 0.2)
        case .iphone12://2532
            font = font.withSize(font.pointSize)
        case .iPhone14Pro://2556
            font = font.withSize(font.pointSize)
        case .iPhone14ProMax://2796
            font = font.withSize(font.pointSize + 1)
        case .iPad:
            font = font.withSize(font.pointSize + 6)
        case .none:
            font = font.withSize(font.pointSize)
        }
    }
}



//detect with iphone12 (2532)
//MARK: - UITextField
//
extension UITextField {
    func adjustsFontSizeToFitDevice() {
        switch UIDevice().modelDevice() {
        case .iPhone8://1334
            font = font?.withSize(font!.pointSize - 1.5)
        case .iPhone8Plus://1920
            font = font?.withSize(font!.pointSize - 0.5)
        case .iPhone11://1792
            font = font?.withSize(font!.pointSize - 0.5)
        case .iPhone11Pro://2436
            font = font?.withSize(font!.pointSize)
        case .iPhone11ProMax://2688
            font = font?.withSize(font!.pointSize + 0.5)
        case .iPhone12ProMax://2778
            font = font?.withSize(font!.pointSize + 1)
        case .iPhone12Mini://2340
            font = font?.withSize(font!.pointSize - 0.2)
        case .iphone12://2532
            font = font?.withSize(font!.pointSize)
        case .iPhone14Pro://2556
            font = font?.withSize(font!.pointSize)
        case .iPhone14ProMax://2796
            font = font?.withSize(font!.pointSize + 1)
        case .iPad:
            font = font?.withSize(font!.pointSize + 10)
        case .none:
            font = font?.withSize(font!.pointSize)
        }
    }
}


//detect with iphone12 (2532)
//MARK: - UIButton
//
extension UIButton {
    func adjustsFontSizeToFitDevice() {
        switch UIDevice().modelDevice() {
        case .iPhone8://1334
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! - 1.5)
        case .iPhone8Plus://1920
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! - 0.5)
        case .iPhone11://1792
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! - 0.5)
        case .iPhone11Pro://2436
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)!)
        case .iPhone11ProMax://2688
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! + 0.5)
        case .iPhone12ProMax://2778
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! + 1)
        case .iPhone12Mini://2340
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! - 0.2)
        case .iphone12://2532
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)!)
        case .iPhone14Pro://2556
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)!)
        case .iPhone14ProMax://2796
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! + 1)
        case .iPad:
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! + 14)
        case .none:
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)!)
        }
    }
}
