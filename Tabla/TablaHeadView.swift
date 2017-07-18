//
//  TablaHeadView.swift
//  Tabla
//
//  Created by Darshan Kalola on 7/18/17.
//  Copyright © 2017 Darshan Kalola. All rights reserved.
//  Base class from which smallTablaHead and largeTablaHead inherit from.

import UIKit

class TablaHeadView: UIView {
    
    // Outer circle center points
    var tanCenterPoint: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    // Black circle center points
    var blackCenterPoint: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    // Radius of outer white circle
    var outerCircleRadius: CGFloat {
        return min(bounds.size.height, bounds.size.width) / 2.1
    }
    
    // Radius of tan white circle
    var tanWhiteCircleRadius: CGFloat {
        return min(bounds.size.height, bounds.size.width) / 2.6
    }
    
    // Radius of inner black circle
    var innerBlackCircleRadius: CGFloat {
        return min(bounds.size.height, bounds.size.width) / 4.3
    }
    
    override func draw(_ rect: CGRect) {
        // Border
        pathForCircle(withRadius: outerCircleRadius, centerPoint: tanCenterPoint, lineWidth: 1).stroke()
        
        // Outer most circle
        let outerCircleColor = UIColor(colorLiteralRed: 0.97, green: 0.95, blue: 0.89, alpha: 1.0)
        outerCircleColor.setFill()
        pathForCircle(withRadius: outerCircleRadius, centerPoint: tanCenterPoint, lineWidth: 1).fill()
        
        // Tan white circle
        let tanWhiteCircle = UIColor(colorLiteralRed: 0.93, green: 0.86, blue: 0.71, alpha: 1.0)
        tanWhiteCircle.setFill()
        pathForCircle(withRadius: tanWhiteCircleRadius, centerPoint: tanCenterPoint, lineWidth: 0.5).fill()
        
        // Inner black circle
        UIColor.black.setFill()
        pathForCircle(withRadius: innerBlackCircleRadius, centerPoint: blackCenterPoint, lineWidth: 0.5).fill()
    }
    
    private func pathForCircle(withRadius radius: CGFloat, centerPoint: CGPoint, lineWidth: CGFloat) -> UIBezierPath {
        let path = UIBezierPath(arcCenter: centerPoint, radius: radius, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: false)
        path.lineWidth = lineWidth
        return path
    }

}
