//
//  CustomDesign.swift
//  H2HSDKIntegrationSample
//
//  Created by Sanjay Shrestha on 1/28/17.
//  Copyright © 2017 Spring Computing Technologies. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.CGColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, atIndex: 0)
    }
    @IBInspectable
    var borderWidth: CGFloat{
        get {
            return layer.borderWidth
        }
        set(newBoarderWidth){
            layer.borderWidth = newBoarderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor?{
        get {
            return layer.borderColor != nil ? UIColor(CGColor: layer.borderColor!) : nil
        }
        set {
            layer.borderColor = newValue?.CGColor
        }
    }
    @IBInspectable
    var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue != 0
        }
    }
}
struct Constants{
    struct Colors {
        static let secondaryColor = UIColor(red: 27/255, green: 214/255, blue: 183/255, alpha: 1)
        static let mainColor = UIColor(red: 25/255, green: 29/255, blue: 67/255, alpha: 1)
    }
    
}
//class UILabelPadding: UILabel {
//    
//    let padding = UIEdgeInsets(top: 2, left: 8, bottom: 2, right: 8)
//    override func drawText(in rect: CGRect) {
//        super.drawText(in: UIEdgeInsetsInsetRect(rect, padding))
//    }
//    
//    override var intrinsicContentSize : CGSize {
//        let superContentSize = super.intrinsicContentSize
//        let width = superContentSize.width + padding.left + padding.right
//        let heigth = superContentSize.height + padding.top + padding.bottom
//        return CGSize(width: width, height: heigth)
//    }
//    
//    
//    
//}
