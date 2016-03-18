//
//  LoginViewController.swift
//  Radial
//
//  Created by Andrey Danilkovich on 3/12/16.
//  Copyright © 2016 Andrey Danilkovich. All rights reserved.
//

import Foundation
import UIKit
import IBAnimatable

@IBDesignable public class LoginViewController:
    UIViewController, ViewControllerDesignable, StatusBarDesignable, RootWindowDesignable {
    // MARK: - ViewControllerDesignable
    @IBInspectable public var hideNavigationBar: Bool = false
    
    // MARK: - StatusBarDesignable
    @IBInspectable public var lightStatusBar: Bool = false
    
    // MARK: - RootWindowDesignable
    @IBInspectable public var rootWindowBackgroundColor: UIColor?
    
    // MARK: - TransitionAnimatable
    @IBInspectable public var transitionAnimationType: String?
    @IBInspectable public var transitionDuration: Double = .NaN
    @IBInspectable public var interactiveGestureType: String?
    
    // MARK: - Lifecylce
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        confingHideNavigationBar()
        configRootWindowBackgroundColor()
    }
    
    public override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        resetHideNavigationBar()
    }
    
    public override func preferredStatusBarStyle() -> UIStatusBarStyle {
        if lightStatusBar {
            return .LightContent
        }
        return .Default
    }
    
    
//    public override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Configure custom transition animation
//        guard let transitionAnimationType = transitionAnimationType, animationType = TransitionAnimationType(rawValue: transitionAnimationType) else {
//            super.prepareForSegue(segue, sender: sender)
//            return
//        }
//        
//        let toViewController = segue.destinationViewController
//        toViewController.transitioningDelegate = PresenterManager.sharedManager().retrievePresenter(animationType, transitionDuration: transitionDuration)
//        
//        super.prepareForSegue(segue, sender: sender)
//    }
}
