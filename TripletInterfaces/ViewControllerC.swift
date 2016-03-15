//
//  ViewControllerC.swift
//  TripletInterfaces
//
//  Created by trvslhlt on 6/16/15.
//  Copyright (c) 2015 travis holt. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    //TODO: Replicate the appearance and behavior of ViewControllerA, but do so programmatically
    //The only difference should be that the right most button will trigger a segue to the "FinViewController"
    
    var gBScreen:UIImageView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        
        //Background view
        let gBView = UIView(frame: CGRect(x: 16, y: 72, width: 300, height: 400))
        gBView.backgroundColor = UIColor.lightGrayColor()
        self.view.addSubview(gBView)
        
        
        //right button
        let rightButton = UIButton(frame: CGRect(x: 230, y: 274, width: 40, height: 40))
        rightButton.backgroundColor = UIColor.redColor()
        rightButton.layer.cornerRadius = rightButton.frame.size.width / 2
        rightButton.clipsToBounds = true
        gBView.addSubview(rightButton)
        
        rightButton.addTarget(self, action: "rightButtonHit", forControlEvents: .TouchUpInside)
    
        
        //left Button
        let leftButton = UIButton(frame: CGRect(x: 182, y: 298, width: 40, height: 40))
        leftButton.backgroundColor = UIColor.redColor()
        leftButton.layer.cornerRadius = leftButton.frame.size.width / 2
        leftButton.clipsToBounds = true
        gBView.addSubview(leftButton)
        
        leftButton.addTarget(self, action: "leftButtonHit", forControlEvents: .TouchUpInside)
        
        
        //Vertical button
        let vertButton = UIButton(frame: CGRect(x: 70, y: 265, width: 25, height: 90))
        vertButton.backgroundColor = UIColor.blackColor()
        gBView.addSubview(vertButton)
        
        
        //Horizontal button
        let horiButton = UIButton(frame: CGRect(x: 37, y: 298, width: 90, height: 23))
        horiButton.backgroundColor = UIColor.blackColor()
        gBView.addSubview(horiButton)
        
        
        //Image view
        gBScreen = UIImageView(frame: CGRect(x: 8, y: 8, width: 284, height: 213))
        if let imageView_ = gBScreen {
            let theImage = UIImage(named: "mario")
            imageView_.image = theImage
            gBView.addSubview(gBScreen!)
        }
        
    }
    
    
    //Actions for left and right buttons
        //action for left button
    func leftButtonHit() {
        if let imageView_ = gBScreen {
            let newImage = UIImage(named: "gameOver")
            imageView_.image = newImage
        }
    }
        //action for right button
    func rightButtonHit() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("FIN")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
}

