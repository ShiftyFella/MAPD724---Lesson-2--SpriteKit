//
//  GameObjectNode.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameObjectNode: SKSpriteNode, GameProtocol {
    // instance vars
    public var dx: CGFloat?
    public var dy: CGFloat?
    public var height: CGFloat?
    public var width: CGFloat?
    public var scale: CGFloat?
    public var halfHeight: CGFloat?
    public var halfWidth: CGFloat?
    public var isColliding: Bool?
    
    init(imageString: String, initialScale: CGFloat) {
        //init object via image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        
        super.init(texture: texture, color: color, size: texture.size())
        
        self.scale = initialScale
        self.height = texture.size().height * self.scale!
        self.width = texture.size().width * self.scale!
        
        self.halfHeight = self.height! * 0.5
        self.halfWidth = self.width! * 0.5
        
        self.isColliding = false
        self.name = imageString
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func Reset() {
        //
    }
    
    public func CheckBounds() {
        //
    }
    
    public func Start() {
        //
    }
    
    public func Update() {
        //
    }
}
