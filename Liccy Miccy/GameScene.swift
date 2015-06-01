//
//  GameScene.swift
//  Liccy Miccy
//
//  Created by Tyler Liddicoat on 5/31/15.
//  Copyright (c) 2015 Tyler Liddicoat. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var movingGround: TLMovingGround!
    var hero: TLHero!
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0, green: 281.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        movingGround = TLMovingGround(size: CGSizeMake(view.frame.width, 20))
        movingGround.position = CGPointMake(0, view.frame.size.height/2)
        addChild(movingGround)
        
        hero = TLHero()
        
        hero.position = CGPointMake(70, movingGround.position.y + movingGround.frame.size.height/2 + hero.frame.size.height/2)
        addChild(hero)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        movingGround.start()
        
    }
    override func update(currentTime: CFTimeInterval) {
     // Called before each frame is rendered
    }
}
