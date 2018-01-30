//
//  StartScene.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit

class StartScene: SKScene {
    override func didMove(to view: SKView) {
        print("Start scene!")
        
        let welcomeLabel: SKLabelNode = self.childNode(withName: "welcomeLabel") as! SKLabelNode
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 1.0))
        }
    }
}
