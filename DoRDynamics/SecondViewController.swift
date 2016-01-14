//
//  SecondViewController.swift
//  DoRDynamics
//
//  Created by AppStarter on 10.01.2016.
//  Copyright © 2016 AppStarter. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var menuView: UIView!
    var backgroundView: UIView!
    var animator: UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupMenuView()
        
        animator = UIDynamicAnimator(referenceView: view)
        
        let showMenuGesture = UISwipeGestureRecognizer(target: self, action: "handleGesture:")
        showMenuGesture.direction = UISwipeGestureRecognizerDirection.Right
        view.addGestureRecognizer(showMenuGesture)
        
        let hideMenuGesture = UISwipeGestureRecognizer(target: self, action: "handleGesture:")
        hideMenuGesture.direction = UISwipeGestureRecognizerDirection.Left
        menuView.addGestureRecognizer(hideMenuGesture)
    }

    func setupMenuView() {
        backgroundView = UIView(frame: view.bounds)
        backgroundView.backgroundColor = UIColor.lightGrayColor()
        backgroundView.alpha = 0.0
        view.addSubview(backgroundView)
        
        menuView = UIView(frame: CGRectMake(-150.0, 20.0, 150.0, view.frame.height - (tabBarController?.tabBar.frame.height ?? 0.0)))
        menuView.backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0)
        view.addSubview(menuView)
    }

    func handleGesture(gesture: UISwipeGestureRecognizer) {
        if gesture.direction == UISwipeGestureRecognizerDirection.Right {
            toggleMenu(true)
        } else {
            toggleMenu(false)
        }
    }
    
    func toggleMenu(shouldOpenMenu: Bool) {
        // Tu piszemy kod :)
        
        backgroundView.alpha = (shouldOpenMenu) ? 0.5 : 0.0
    }
}

