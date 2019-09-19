//
//  CleaningServicesBuilder.swift
//  RWClean
//
//  Created by Yasin Akbaş on 19.09.2019.
//  Copyright © 2019 Razeware, LLC. All rights reserved.
//

import UIKit

public class CleaningServiceBuilder {
    
    public static func instantiateNavigationController() -> UINavigationController {
        let bundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: "CleaningServices", bundle: bundle)
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        return navigationController
    }
}
