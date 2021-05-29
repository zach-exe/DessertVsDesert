//
//  RandomGen.swift
//  Desert or Dessert
//
//  Created by Zach on 5/16/21.
//
import SwiftUI
import Foundation

func generateWidthNum() -> CGFloat {
    
    //let upper :Int = Int(GameViewController().width)
    
    let screenWidth  = UIScreen.main.fixedCoordinateSpace.bounds.width
    let screenHeight = UIScreen.main.fixedCoordinateSpace.bounds.height
    
    let upper = Int(screenWidth)
    
    let returnValue = Int.random(in: 0...upper)
    let otherVal = GameViewController().viewDidLoad()
    let returnAsFloat :CGFloat = CGFloat(returnValue)
    
    return CGFloat(returnValue)
    
}

func generateHeightNum() -> CGFloat {
    
    //let upper :Int = Int(GameViewController().height)
    let screenWidth  = UIScreen.main.fixedCoordinateSpace.bounds.width
    let screenHeight = UIScreen.main.fixedCoordinateSpace.bounds.height
    
    let upper = Int(screenWidth)
    let returnValue = Int.random(in: 0...upper)
    
    let returnAsFloat :CGFloat = CGFloat(returnValue)
    
    return CGFloat(returnValue)
    
}
