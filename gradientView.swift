//
//  gradientView.swift
//  Animation
//
//  Created by Abdalla on 7/19/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit
@IBDesignable
class gradientView: UIView {

    @IBInspectable var firstColor:UIColor = UIColor.clear{didSet{VD()}}
    @IBInspectable var secondColor:UIColor = UIColor.clear{didSet{VD()}}
    
    override class var layerClass:AnyClass{
        get{return CAGradientLayer.self}
    }

    func VD(){
        let lay = self.layer as! CAGradientLayer
        lay.colors = [firstColor.cgColor, secondColor.cgColor]
    }
}
