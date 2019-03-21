//
//  html_to_string.swift
//
//  Copyright © 2019 Heura Media. All rights reserved.
//


//URL checker in string

extension String {

    var isValidURL: Bool {

        let detectorBoi = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        if let match = detectorBoi.firstMatch(in: self, options: [], range: NSRange(location: 0, length: self.endIndex.encodedOffset)) {

            //It'll be a link only if the ENTIRE STRING is a link.

            return match.range.length == self.endIndex.encodedOffset
        }

        else {
            return false
        }
    }
}

//URL checker in string END
