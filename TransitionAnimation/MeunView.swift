//
//  MeunView.swift
//  TransitionAnimation
//
//  Created by 梁雅軒 on 2017/2/23.
//  Copyright © 2017年 zoaks. All rights reserved.
//

import UIKit

class MeunView: UIView {
    
    @IBOutlet var contentView: UIView!
    init(_ nibName:String) {
        super.init(frame: CGRect.zero)
        let nib = UINib.init(nibName: nibName, bundle: nil)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        nibView.frame = UIScreen.main.bounds
        self.frame = nibView.frame
        self.addSubview(nibView)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(leave)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func show() {
        let app = UIApplication.shared.delegate as! AppDelegate
        app.window?.addSubview(self)
        
        UIView.animate(withDuration: 0.3) { 
            self.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.4)
            var rect = self.contentView.frame
            rect.origin.y -= rect.size.height
            self.contentView.frame = rect
        }
    }
    
    func leave() {
        UIView.animate(withDuration: 0.3, animations: { 
            var rect = self.contentView.frame
            rect.origin.y += rect.size.height
            self.contentView.frame = rect
            self.backgroundColor = UIColor.clear
        }) { (done) in
            self.removeFromSuperview()
        }
    }
}
