//
//  ViewController.swift
//  CAShapeLayerDemo
//
//  Created by cass on 2018/10/17.
//  Copyright © 2018年 cass. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(bezierView)
        let originX = bezierView.center.x
        let originY = bezierView.center.y
        let labW = CGFloat(20)
        let dis = CGFloat(120)
        
        let labelN = DirLabel.init()
        labelN.frame = CGRect.init(x: originX - labW*0.5, y: originY-labW - dis, width: labW, height: labW)
        labelN.text = "N"
        view.addSubview(labelN)
        let labelS = DirLabel.init()
        labelS.frame = CGRect.init(x: originX-labW*0.5, y: originY+dis, width: labW, height: labW)
        labelS.text = "S"
        view.addSubview(labelS)
        let labelW = DirLabel.init()
        labelW.frame = CGRect.init(x: originX - dis - labW, y: originY-labW*0.5, width: labW, height: labW)
        labelW.text = "W"
        view.addSubview(labelW)
        let labelE = DirLabel.init()
        labelE.frame = CGRect.init(x: originX + dis, y: originY-labW*0.5, width: labW, height: labW)
        labelE.text = "E"
        view.addSubview(labelE)
    }
    
    lazy var bezierView: UIView = {
        
        let bezierView = compass.init()
        bezierView.frame = CGRect.init(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        bezierView.backgroundColor = UIColor.gray
        
        return bezierView
    }()


}

class DirLabel: UILabel {
    
    init() {
        super.init(frame: CGRect.zero)
        self.font = UIFont.systemFont(ofSize: 18)
        self.textAlignment = .center
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


