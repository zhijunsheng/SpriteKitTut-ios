//
//  GameScene.swift
//  SpriteKitTut
//
//  Created by Golden Thumb on 2021-06-17.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    let ant = SKSpriteNode(imageNamed: "ant0")
    let antAnimAct: SKAction
    
    override init(size: CGSize) {
        let antFrame0 = SKTexture(imageNamed: "ant0")
        let antFrame1 = SKTexture(imageNamed: "ant1")
        let antTextures: [SKTexture] = [antFrame0, antFrame1]
        antAnimAct = SKAction.animate(with: antTextures, timePerFrame: 0.2)
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor.white
        
        drawLine(view: view)
        drawRect()
        drawOval()
        
        ant.position = CGPoint(x: 300, y: 0)
        addChild(ant)
        
        ant.run(SKAction.repeatForever(antAnimAct))
    }

    override func update(_ currentTime: TimeInterval) {
        ant.position = CGPoint(x: ant.position.x, y: ant.position.y + 2)
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
