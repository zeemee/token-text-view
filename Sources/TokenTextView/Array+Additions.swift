//
//  Array+Additions.swift
//  TokenTextView
//
//  Created by Nick Peterson on 6/26/23.
//

import Foundation

extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}
