//
//  Line.swift
//  Animation
//
//  Created by Abdalla on 7/19/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class Line: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var line: UIView!
    

    @IBAction func btn01(_ sender: Any) {
        UIView.animate(withDuration: 0.1, delay: 0.1,usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .allowAnimatedContent, animations:{self.line.center.x = self.btn1.center.x}, completion: nil)
    }
    @IBAction func btn02(_ sender: Any) {
        UIView.animate(withDuration: 0.1, delay: 0.1,usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .allowAnimatedContent, animations:{self.line.center.x = self.btn2.center.x}, completion: nil)
    }
    @IBAction func btn03(_ sender: Any) {
        UIView.animate(withDuration: 0.1, delay: 0.1,usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .allowAnimatedContent, animations:{self.line.center.x = self.btn3.center.x}, completion: nil)
    }
    @IBAction func btn04(_ sender: Any) {
        UIView.animate(withDuration: 0.1, delay: 0.1,usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .allowAnimatedContent, animations:{self.line.center.x = self.btn4.center.x}, completion: nil)
    }
    @IBAction func btn05(_ sender: Any) {
        
        UIView.animate(withDuration: 0.1, delay: 0.1,usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .allowAnimatedContent, animations:{self.line.center.x = self.btn5.center.x}, completion: nil)
        
        let actionSheet = UIActionSheet(title: "Change Colour of background", delegate: self, cancelButtonTitle: "Close", destructiveButtonTitle: "Delete", otherButtonTitles: "Red", "Blue", "Orange")
        actionSheet.show(in: view)
    }
    func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int) {
        if buttonIndex == 0 {dismiss(animated: true, completion: nil)}
        if buttonIndex == 2 {self.view.backgroundColor = UIColor.red}
        if buttonIndex == 3 {self.view.backgroundColor = UIColor.blue}
        if buttonIndex == 4 {self.view.backgroundColor = UIColor.orange}
    }
}
