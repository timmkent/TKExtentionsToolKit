//
//  Extensions+UIBundle.swift
//  nextBoy
//
//  Created by Marc Felden on 16.12.18.
//  Copyright © 2018 Marc Felden. All rights reserved.
//

import UIKit

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}


