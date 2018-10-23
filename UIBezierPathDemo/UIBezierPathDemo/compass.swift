//
//  compass.swift
//  CAShapeLayerDemo
//
//  Created by cass on 2018/10/22.
//  Copyright © 2018年 cass. All rights reserved.
//

import UIKit

class compass: UIView {
    
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        let radius = CGFloat(160)
        let originX = self.center.x
        let originY = self.center.y
        
        
        let path = UIBezierPath.init(ovalIn: CGRect.init(x: originX - radius, y: originY - radius, width: radius*2, height: radius*2))
        path.lineWidth = 5
        UIColor.black.setStroke()
        UIColor.white.setFill()
        path.stroke()
        path.fill()
        
        let blueHand = UIBezierPath.init()
        blueHand.lineWidth = 4
        blueHand.move(to: CGPoint.init(x: originX - 8, y: originY))
        blueHand.addLine(to: CGPoint.init(x: originX, y: originY - 120))
        blueHand.addLine(to: CGPoint.init(x: originX + 8, y: originY))
        UIColor.blue.setFill()
        blueHand.fill()

        let redHand = UIBezierPath.init()
        redHand.lineWidth = 4
        redHand.move(to: CGPoint.init(x: originX - 8, y: originY))
        redHand.addLine(to: CGPoint.init(x: originX, y: originY + 120))
        redHand.addLine(to: CGPoint.init(x: originX + 8, y: originY))
        UIColor.red.setFill()
        redHand.fill()
        
        let scaleRadius = CGFloat(150)
        let scale = UIBezierPath.init(ovalIn: CGRect.init(x: originX - scaleRadius, y: originY - scaleRadius, width: scaleRadius*2, height: scaleRadius*2))
        scale.lineWidth = 20
        let LineDashArr: [CGFloat] = [4.0,scaleRadius*CGFloat(Double.pi*0.5) - 4]
        scale.setLineDash(LineDashArr, count: 2, phase: 2)
        UIColor.black.setStroke()
        scale.stroke()
        
        let milliScaleR = CGFloat(155)
        let milliScale = UIBezierPath.init(ovalIn: CGRect.init(x: originX - milliScaleR, y: originY - milliScaleR, width: milliScaleR*2, height: milliScaleR*2))
        milliScale.lineWidth = 10
        let mLineDashArr: [CGFloat] = [2.0,scaleRadius*CGFloat(Double.pi/80)-0.1 - 2]
        milliScale.setLineDash(mLineDashArr, count: 2, phase: 1)
        UIColor.black.setStroke()
        milliScale.stroke()

    }
}
