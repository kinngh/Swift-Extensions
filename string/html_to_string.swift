//
//  html_to_string.swift
//
//  Copyright © 2019 Heura Media. All rights reserved.
//


//Extension to convert HTML to Plain Text and remove tags

extension String {
    var htmltostring_attributed: NSAttributedString? {

        do {
            return try NSAttributedString(data: Data(utf8),
                                          options: [.documentType: NSAttributedString.DocumentType.html,
                                                    .characterEncoding: String.Encoding.utf8.rawValue],
                                          documentAttributes: nil)
        }

        catch {
            print("error:", error)
            return  nil
        }

    }

    var htmltostring: String {
        return htmltostring_attributed?.string ?? ""
    }

}
