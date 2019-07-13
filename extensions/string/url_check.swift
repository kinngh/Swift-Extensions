//
//  html_to_string.swift
//
//  Copyright © 2019 Heura Media. All rights reserved.
//

import UIKit
import Foundation

//URL checker in string

extension String {

    var isValidURL: Bool {

        let detectorBoi = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        if let match = detectorBoi.firstMatch(in: self, options: [], range: NSRange(location: 0, length: endIndex.utf16Offset(in: self))) {

            //It'll be a link only if the ENTIRE STRING is a link.
            return match.range.length == endIndex.utf16Offset(in: self)
        }

        else {
            return false
        }
    }
}

//URL checker in string END
