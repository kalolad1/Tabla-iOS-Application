//
//  largeTablaHeadView.swift
//  Tabla
//
//  Created by Darshan Kalola on 7/18/17.
//  Copyright © 2017 Darshan Kalola. All rights reserved.
//

import UIKit

@IBDesignable
class largeTablaHeadView: TablaHeadView {

    let conversionFactor: CGFloat = 4 / 11.25
    
    // Black circle center points
    override var blackCenterPoint: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY - bounds.midY / 8)
    }
    // Radius of inner black circle
    override var innerBlackCircleRadius: CGFloat {
        return min(bounds.size.height, bounds.size.width) / 6
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
}


// 22. 5 Outer circle
// 8 black circle

// 11.25 rad outer circle
// 4 rad black circle
