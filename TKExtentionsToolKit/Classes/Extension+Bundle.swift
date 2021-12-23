//
//  Extensions+UIBundle.swift
//  nextBoy
//
//  Created by Marc Felden on 16.12.18.
//  Copyright © 2018 Marc Felden. All rights reserved.
//

import UIKit

public extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}


public protocol Storyboarded {
    static func instantiate() -> Self
}

public extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        if #available(iOS 13.0, *) {
            return storyboard.instantiateViewController(identifier: id) as! Self
        } else {
            fatalError("Wrong iOS Version")
        }
    }
}
