//
//  SignUpViewController.swift
//  NCIT
//
//  Created by Matteo Bellinaso on 02/05/2020.
//  Copyright © 2020 Matteo Bellinaso. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var nomeTF: UITextField!
    
    @IBOutlet weak var cognomeTF: UITextField!
    
    @IBOutlet weak var passTF: UITextField!
    
    @IBOutlet weak var confirmPassTF: UITextField!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var confirmButton: UIButton!
    
    @IBOutlet weak var errLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpElements()
    }
    
    func setUpElements() {
        errLabel.alpha = 0;
        Utility.styleTextField(emailTF)
        Utility.styleTextField(passTF)
        Utility.styleTextField(confirmPassTF)
        Utility.styleTextField(nomeTF)
        Utility.styleTextField(cognomeTF)
        Utility.styleFilledButton(confirmButton)
    }
    
    @IBAction func confirmSignUpTap(_ sender: Any) {
        let error = validateFields()
        
        if (error != nil) {
           showError(error!)
        } else {
            errLabel.alpha = 0
        }
        
    }
    
    @IBAction func backTap(_ sender: Any) {
    }
    
    func validateFields() -> String? {
        
        let pass = confirmPassTF.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let confirmedPass = confirmPassTF.text!.trimmingCharacters(in: .whitespacesAndNewlines)

        
        if (emailTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            nomeTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            cognomeTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            confirmPassTF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "") {
            return "Pleas fill in all fields"
        }
        
        if Utility.checkPassword(pass: pass) == false {
            return "Plase make Sure your password contain least 6 character, contains a special character and a number."
        }
        
        if (confirmedPass != pass) {
            return "Unmatched password"
        }
        
        return nil
    }
    
    func showError(_ message: String) {
        errLabel.text = message
        errLabel.alpha = 1
    }
}
