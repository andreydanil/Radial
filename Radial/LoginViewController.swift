//
//  LoginViewController.swift
//  Radial
//
//  Created by Andrey Danilkovich on 3/25/16.
//  Copyright © 2016 Andrey Danilkovich. All rights reserved.
//

import Foundation

class LoginViewController: UIViewController {
    
@IBOutlet weak var signupButton: UIButton!
@IBOutlet weak var loginButton: UIButton!

override func viewDidLoad() {
    super.viewDidLoad()
    
    signupButton.layer.cornerRadius = 5
    loginButton.layer.cornerRadius = 5
    
}

override func preferredStatusBarStyle() -> UIStatusBarStyle {
    return UIStatusBarStyle.LightContent
}

}