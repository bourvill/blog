//
//  AttributesExtension.swift
//  Blog
//
//  Created by Marinel Maxime on 24/02/2020.
//

import Foundation
import Plot

extension Attribute where Context == HTML.ImageContext {
    static func width(_ value: String) -> Self {
        Attribute(name: "width", value: value)
    }

    static func height(_ value: String) -> Self {
        Attribute(name: "width", value: value)
    }
}
