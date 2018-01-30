//
//  GameScene.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

let screenSize = UIScreen.main.bounds
var screenHeight: CGFloat?
var screenWidth: CGFloat?

class GameScene: SKScene {
    
    //game vars
    var planeSprite: Plane?
    var oceanSprite: Ocean?
    
    override func didMove(to view: SKView) {
        //
        screenHeight = screenSize.height
        screenWidth = screenSize.width
        
        //add ocean background
        self.oceanSprite = Ocean()
        self.addChild(oceanSprite!)
        
        
        //add plane
        
        self.planeSprite = Plane()
        self.planeSprite?.position = CGPoint(x: screenWidth! * 0.5, y: 50)
        self.addChild(planeSprite!)
       
        //play background sound
        let engineSound = SKAudioNode(fileNamed: "engine.mp3")
        
        self.addChild(engineSound)
        engineSound.autoplayLooped = true
        
        //preload sounds
        do {
            let sounds: [String] = ["thunder", "yay"]
            for sound in sounds {
                let path:String = Bundle.main.path(forResource: sound, ofType: "mp3")!
                let url: URL = URL(fileURLWithPath: path)
                let player: AVAudioPlayer = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            }
        } catch  {
            
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       //
        self.planeSprite?.TouchMove(newPosition: CGPoint(x: pos.x, y: 50))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        //
         self.planeSprite?.TouchMove(newPosition: CGPoint(x: pos.x, y: 50))
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       //
        self.planeSprite?.TouchMove(newPosition: CGPoint(x: pos.x, y: 50))
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
        self.oceanSprite?.Update()
        self.planeSprite?.Update()
    }
}
