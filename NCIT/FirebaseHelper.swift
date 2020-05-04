//
//  DaoGeneric.swift
//  NCIT
//
//  Created by Matteo Bellinaso on 02/05/2020.
//  Copyright © 2020 Matteo Bellinaso. All rights reserved.
//

import Foundation
import Firebase


class FirebaseHelper {
    
    func initFb() {
        FirebaseApp.configure();
    }
    
    func createUser(_ email: String, pass: String, callback: Any) {
        // Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>, completion: <#T##AuthDataResultCallback?##AuthDataResultCallback?##(AuthDataResult?, Error?) -> Void#>)
    }
}
