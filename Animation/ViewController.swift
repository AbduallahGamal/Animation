//
//  ViewController.swift
//  Animation
//
//  Created by Abdalla on 7/19/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl_show: NSLayoutConstraint!
    @IBOutlet weak var img_view: UIImageView!
    
    @IBAction func btn_animation(_ sender: Any) {
        lbl.text = "Swift"
        img_view.image = UIImage(named: "swiftt")
        img_view.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        lbl_show.constant = 70
        
        UIView.animate(withDuration: 2){
            self.img_view.frame = CGRect(x: 0, y: 0, width: self.view.layer.frame.width, height: self.view.layer.frame.height*0.3)
            self.loadViewIfNeeded()
        }
        
        /*let alert = UIAlertController(title: "Msg", message: "Hello IOS Developers", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil) */
        
        let alertt = UIAlertController(title: "add", message: "add to label", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default){(action) in
            self.lbl.text = (alertt.textFields?.first)?.text
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alertt.addTextField(configurationHandler:nil)
        alertt.addAction(saveAction)
        alertt.addAction(cancelAction)
        
        present(alertt, animated: true, completion: nil)
        
    }
    
}

