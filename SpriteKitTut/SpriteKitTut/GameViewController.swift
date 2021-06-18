//
//  GameViewController.swift
//  SpriteKitTut
//
//  Created by Golden Thumb on 2021-06-17.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            let scene = GameScene()
            scene.size = view.bounds.size
            view.presentScene(scene)
        }
    }

}
