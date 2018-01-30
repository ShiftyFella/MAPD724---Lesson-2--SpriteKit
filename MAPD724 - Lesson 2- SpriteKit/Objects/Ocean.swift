//
//  Ocean.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit

class Ocean: GameObjectNode {
    
    init() {
        super.init(imageString: "ocean", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        self.dy = 5.0
        self.anchorPoint = CGPoint.zero
    }
    
    override func Reset() {
        self.position = CGPoint.zero
    }
    
    override func CheckBounds() {
        if ( self.height! + self.position.y < screenSize.height - 1) {
            self.Reset()
        }
    }
    
    override func Update() {
        self.position.y -= self.dy!
        self.CheckBounds()
    }
}
