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
        let sprite = SKSpriteNode(color: UIColor.yellow, size: CGSize(width: 100, height: 200))
        sprite.position = CGPoint(x: 300, y: 300)
        addChild(sprite)
        
        let action1 = SKAction.move(to: CGPoint(x: 600, y: 800), duration: 3)
        let action2 = SKAction.scale(by: 2, duration: 3)
        let action3 = SKAction.rotate(byAngle: 0.5 * CGFloat.pi, duration: 3)
        let actionGroup = SKAction.sequence([action1, action2, action3])
        
        sprite.run(actionGroup)
    }
}
