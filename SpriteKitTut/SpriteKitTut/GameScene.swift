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
        
        drawLine(view: view)
        drawRect()
        drawOval()
        
        let sprite = SKSpriteNode(imageNamed: "ant0")
        sprite.position = CGPoint(x: 300, y: 300)
        addChild(sprite)
        
        let action1 = SKAction.move(to: CGPoint(x: 600, y: 800), duration: 1)
        let action2 = SKAction.scale(by: 2, duration: 1)
        let action3 = SKAction.rotate(byAngle: 0.5 * CGFloat.pi, duration: 1)
        let action4 = SKAction.move(to: CGPoint(x: 300, y: 800), duration: 1)
        let actionGroup = SKAction.sequence([action1, action2, action3, action4])
        
        sprite.run(actionGroup)
    }
    
    func drawOval() {
        let shape = SKShapeNode()
        let path = CGMutablePath()
        path.addEllipse(in: CGRect(x: -200, y: 700, width: 400, height: 300))
        shape.path = path
        shape.strokeColor = UIColor.green
        shape.fillColor = UIColor.brown
        shape.lineWidth = 6
        addChild(shape)
    }
    
    func drawRect() {
        let shape = SKShapeNode()
        let path = CGMutablePath()
        path.addRoundedRect(in: CGRect(x: 200, y: 250, width: 300, height: 150), cornerWidth: 10, cornerHeight: 10)
        shape.path = path
        shape.strokeColor = UIColor.brown
        shape.fillColor = UIColor.green
        shape.lineWidth = 3
        addChild(shape)
    }
    
    func drawLine(view: SKView) {
        let shape = SKShapeNode()
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 200))
        path.addLine(to: CGPoint(x: view.bounds.width, y: 200))
        shape.path = path
        shape.strokeColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        shape.lineWidth = 5
        addChild(shape)
    }
}
