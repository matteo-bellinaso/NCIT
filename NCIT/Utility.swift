//
//  Utility.swift
//  NCIT
//
//  Created by Matteo Bellinaso on 02/05/2020.
//  Copyright © 2020 Matteo Bellinaso. All rights reserved.
//

import Foundation
import UIKit

class Utility {
    
    static func checkPassword(pass: String) -> Bool {
        let test = NSPredicate(format: "SELF MATCHES %@", "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}");
        return test.evaluate(with: pass);
    }
    
    static func styleTextField(_ textField: UITextField) {
        let bottom = CALayer();
        bottom.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        bottom.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        textField.borderStyle = .none
        textField.layer.addSublayer(bottom)
    }
    
    static func styleFilledButton(_ button: UIButton) {
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }
}
