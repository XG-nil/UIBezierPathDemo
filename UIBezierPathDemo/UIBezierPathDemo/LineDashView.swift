//
//  LineDashPath.swift
//  CAShapeLayerDemo
//
//  Created by cass on 2018/10/17.
//  Copyright © 2018年 cass. All rights reserved.
//

import UIKit

class LineDashView: UIView {

    override func draw(_ rect: CGRect) {
        let path = UIBezierPath.init()
        path.move(to: CGPoint.init(x: 30, y: 100))
        path.addLine(to: CGPoint.init(x: 600, y: 100))
        path.lineWidth = 5
        let LineDashArr: [CGFloat] = [20.0,40.0,40.0,80.0,60.0]
        path.setLineDash(LineDashArr, count: 5, phase: 40)
        UIColor.red.setStroke()
        path.stroke()
        
        
    }

}
