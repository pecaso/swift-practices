//
//  Constant.swift
//  Smack
//
//  Created by Yasinkbas on 12/20/18.
//  Copyright © 2018 Yasin. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constant
let BASE_URL                = "https://chattychatjb.herokuapp.com/v1/"
let URL_REGISTER            = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN                = "toLogin"
let TO_CREATE_ACCOUNT       = "toCreateAccount"
let UNWIND                  = "unwindToChannel"

// User Defaults
let TOKEN_KEY               = "token"
let LOGGED_IN_KEY           = "loggedIn"
let USER_EMAIL              = "userEmail"




