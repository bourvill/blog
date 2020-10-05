//
//  WebsiteExtension.swift
//  Blog
//
//  Created by Marinel Maxime on 05/10/2020.
//

import Foundation
import Publish

extension Website {
    var apps: [App] {
        App.allCases
    }

    var socials: [SocialLink] {
        SocialLink.allCases
    }
}
