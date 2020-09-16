//
//  Identifiable.swift
//  Expenses
//
//  Created by Emanuil Gospodinov on 12.09.20.
//  Copyright © 2020 Emanuil Gospodinov. All rights reserved.
//

import Foundation

protocol Identifiable { }

extension Identifiable {
    static var id: String { "\(self)" }
}
