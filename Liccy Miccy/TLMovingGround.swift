//
//  TLMovingGround.swift
//  Liccy Miccy
//
//  Created by Tyler Liddicoat on 5/31/15.
//  Copyright (c) 2015 Tyler Liddicoat. All rights reserved.
//

import Foundation
import SpriteKit

class TLMovingGround: SKSpriteNode {
    let NUMBER_OF_SEGMENTS = 20
    let COLOR_ONE = UIColor.blackColor()
    let COLOR_TWO = UIColor.brownColor()
    
    init(size: CGSize) {
        super.init(texture: nil, color: UIColor.brownColor(), size: CGSizeMake(size.width*2, size.height))
        anchorPoint = CGPointMake(0, 0.5)
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++ {
            var segmentColor: UIColor!
            if i % 2 == 0 {
                segmentColor = COLOR_ONE
            } else {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width / CGFloat(NUMBER_OF_SEGMENTS), self.size.height))
            segment.anchorPoint = CGPointMake(0.0, 0.5)
            segment.position = CGPointMake(CGFloat(i)*segment.size.width, 0)
            addChild(segment)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func start() {
        let moveLeft = SKAction.moveByX(-frame.size.width/2, y: 0, duration: 1.0)
        let resetPosition = SKAction.moveToX(0, duration: 0)
        let moveSequence = SKAction.sequence([moveLeft, resetPosition])
        
        runAction(SKAction.repeatActionForever(moveSequence))
        
    }
}
