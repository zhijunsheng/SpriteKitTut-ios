//
//  GameScene.swift
//  SpriteKitTut
//
//  Created by Golden Thumb on 2021-06-17.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.white
        
        let sprite = SKSpriteNode(imageNamed: "ant0")
        sprite.position = CGPoint(x: 300, y: 300)
        addChild(sprite)
        
        let action1 = SKAction.move(to: CGPoint(x: 600, y: 800), duration: 3)
        let action2 = SKAction.scale(by: 2, duration: 3)
        let action3 = SKAction.rotate(byAngle: 0.5 * CGFloat.pi, duration: 3)
//        let action4 = SKAction.move(to: CGPoint(x: 0, y: 800), duration: 1)
        let actionGroup = SKAction.sequence([action1, action2, action3])
        
        sprite.run(actionGroup)
    }
}
