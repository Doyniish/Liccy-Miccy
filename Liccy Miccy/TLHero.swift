//
//  TLHero.swift
//  Liccy Miccy
//
//  Created by Tyler Liddicoat on 5/31/15.
//  Copyright (c) 2015 Tyler Liddicoat. All rights reserved.
//

import Foundation
import SpriteKit

class TLHero: SKSpriteNode {
    var body: SKSpriteNode
    var arm: SKSpriteNode
    var rightFoot: SKSpriteNode
    var leftFoot: SKSpriteNode
    
    init() {
        super.init(texture: nil, color: UIColor.clearColor(), size: CGSizeMake(32, 44))
        body = SKSpriteNode(color: UIColor.blackColor(), size: CGSizeMake(32, 40))
        body.position = CGPointMake(0, 2)
        addChild(body)
        
        let skinColor = UIColor(red: 207.0/255.0, green: 193.0/255.0, blue: 168.0/255.0, alpha: 1.0)
        let face = SKSpriteNode(color: skinColor, size: CGSizeMake(self.frame.size.width, 12))
        face.position = CGPointMake(0, 6)
        body.addChild(face)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
