//
//  Plane.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit

class Plane: GameObjectNode {
    init() {
        super.init(imageString: "plane", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func CheckBounds() {
        //
        if (self.position.x > screenSize.width - self.halfWidth!) {
            self.position.x = screenSize.width - self.halfWidth!
        }
        
        if (self.position.x < self.halfWidth!) {
            self.position.x = self.halfWidth!
        }
    }
    
    override func Start() {
        //
        
    }
    
    override func Update() {
        //
        self.CheckBounds()
    }
    
    func TouchMove(newPosition: CGPoint) {
        self.position = newPosition
    }
}
