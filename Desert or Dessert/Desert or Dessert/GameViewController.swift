//
//  GameViewController.swift
//  Desert or Dessert
//
//  Created by Zach on 5/13/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func loadView() {
       self.view = SKView()
     }
    //var width :CGFloat = 0
    //var height :CGFloat = 0

    override func viewDidLoad() {
        let skView = view as! SKView
        super.viewDidLoad()
        
//        let screenSize: CGRect = UIScreen.main.bounds
//        width = screenSize.size.width
//        height = screenSize.size.height
        //let testVal = 5
        
        let buttonBackground = UIImage(named: "blue-23954")
        let dessert = UIButton()
        dessert.frame = CGRect(x: 10, y: 100, width: 100, height: 100)
        dessert.setBackgroundImage(buttonBackground, for: UIControl.State.normal)
        dessert.addTarget(self, action: #selector(self.imageButtonTapped), for: .touchUpInside)
        
        self.view.addSubview(dessert)
        
      
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    @objc func imageButtonTapped(_sender:UIButton!)
    {
//        CGRect screenBound = [[UIScreen mainScreen] bounds];
//        CGSize screenSize = screenBound.size;
//        CGFloat screenWidth = screenSize.width;
//        CGFloat screenHeight = screenSize.height;
        let xPos = generateWidthNum()
        let yPos = generateHeightNum()
        _sender.frame.origin = CGPoint(x: xPos, y: yPos)
        print("testing")
        print(xPos)
        print(yPos)
    }
    
    override func didReceiveMemoryWarning() {
            
            super.didReceiveMemoryWarning()
            
        }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
