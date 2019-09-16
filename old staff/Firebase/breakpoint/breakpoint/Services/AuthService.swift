//
//  AuthService.swift
//  breakpoint
//
//  Created by yasinkbas on 21.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if error != nil {
                userCreationComplete(false,error)
                return
            }
            
            let userData = ["provider":authResult?.user.providerID, "email": authResult?.user.email]
            print("user providerID: \(authResult?.user.providerID) \nuser unique id: \(authResult?.user.uid)")
            DataService.instance.createDBUser(uid: (authResult?.user.uid)!, userData: userData)
            userCreationComplete(true,nil)
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()) {
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if error != nil {
                loginComplete(false,error)
                return
            }
            loginComplete(true, nil)
        }
    }
}


