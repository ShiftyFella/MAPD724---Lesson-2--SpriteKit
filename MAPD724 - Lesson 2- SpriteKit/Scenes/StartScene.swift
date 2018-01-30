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
}
