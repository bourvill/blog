//
//  SocialLink.swift
//  Blog
//
//  Created by Marinel Maxime on 05/10/2020.
//

import Foundation

enum SocialLink: CaseIterable {
    case twitter
    case github
    case linkedIn

    var link: String {
        switch self {
        case .twitter:
            return "https://twitter.com/bourvill"
        case .github:
            return "https://github.com/bourvill"
        case .linkedIn:
            return "https://www.linkedin.com/in/💻-maxime-📱marinel-5292a2151/"
        }
    }

    var icon: String {
        switch self {
        case .twitter:
            return "fa-twitter"
        case .github:
            return "fa-github"
        case .linkedIn:
            return "fa-linkedin"
        }
    }
}
