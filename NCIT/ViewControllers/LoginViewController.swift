//
//  LoginViewController.swift
//  NCIT
//
//  Created by Matteo Bellinaso on 02/05/2020.
//  Copyright © 2020 Matteo Bellinaso. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var errMsg: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func setUpElements() {
        errMsg.alpha = 0;
        Utility.styleTextField(emailTF)
        Utility.styleTextField(passTF)
        
        Utility.styleHollowButton(loginButton)
        Utility.styleFilledButton(signUpButton)
    }

    @IBAction func loginTap(_ sender: Any) {
    }
    @IBAction func signUpTap(_ sender: Any) {
    }
}
