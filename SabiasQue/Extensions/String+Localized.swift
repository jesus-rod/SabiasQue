//
//  String+Localized.swift
//  SabiasQue
//
//  Created by Jesus Rodriguez on 09.01.21.
//

import Foundation

extension String {

    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
