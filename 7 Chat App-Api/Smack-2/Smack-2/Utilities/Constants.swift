//
//  Constants.swift
//  Smack-2
//
//  Created by yasinkbas on 19.02.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import Foundation

//typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://smack-app2.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let TO_UNWIND_CHANNELS = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
