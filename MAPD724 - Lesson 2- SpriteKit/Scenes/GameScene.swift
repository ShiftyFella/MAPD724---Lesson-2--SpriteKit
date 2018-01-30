//
//  GameScene.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        //
        let helloLabel : SKLabelNode = self.childNode(withName: "helloLabel") as! SKLabelNode
        let plane : SKSpriteNode = self.childNode(withName: "plane") as! SKSpriteNode
        
        helloLabel.position.x = 0
        helloLabel.position.y = 0
        
        plane.position = CGPoint(x: 150, y: 150)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       //
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        //
    }
    
    func touchUp(atPoint pos : CGPoint) {
       //
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       //
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
