//
//  POWall.swift
//  Wall Dodge
//
//  Created by Patrick O'Brien on 3/10/17.
//  Copyright © 2017 Patrick O'Brien. All rights reserved.
//

import Foundation
import SpriteKit

class MLWall: SKSpriteNode {
    
    let WALL_WIDTH: CGFloat = 30.0
    let WALL_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.black
    
    init() {
        let size = CGSize(width: WALL_WIDTH, height: WALL_HEIGHT)
        super.init(texture: nil, color: WALL_COLOR, size: size)
        
        loadPhysicsBodyWithSize(size)
        startMoving()
    }
    
    func loadPhysicsBodyWithSize(_ size: CGSize) {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.categoryBitMask = wallCategory
        physicsBody?.affectedByGravity = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startMoving() {
        let moveLeft = SKAction.moveBy(x: -kDefaultXToMovePerSecond, y: 0, duration: 1)
        run(SKAction.repeatForever(moveLeft))
    }
    
    func stopMoving() {
        removeAllActions()
    }
    
}
