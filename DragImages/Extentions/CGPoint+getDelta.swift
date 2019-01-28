//
//  CGPoint+getDelta.swift
//  DragImages
//
//  Created by Evgeniy Ryshkov on 29/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

extension CGPoint {
    func getDelta(withRect rect: CGRect) -> CGPoint {
        
        let xCenter = rect.width / 2
        let yCenter = rect.height / 2
        
        var xResult: CGFloat
        var yResult: CGFloat
        
        let xCurrent = self.x
        let yCurrent = self.y
        
        if xCurrent <= xCenter {
            xResult = xCenter - xCurrent
        }else{
            xResult = xCurrent - xCenter
        }
        
        if yCurrent <= yCenter {
            yResult = yCenter - yCurrent
        }else{
            yResult = yCurrent - yCenter
        }
        
        if (xCurrent > xCenter) && (yCurrent <= yCenter) {
            xResult *= -1
        }
        
        if (xCurrent <= xCenter) && (yCurrent >= yCenter) {
            yResult *= -1
        }
        
        if (xCurrent > xCenter) && (yCurrent > yCenter) {
            xResult *= -1
            yResult *= -1
        }
        
        return CGPoint(x: xResult, y: yResult)
    }
}
