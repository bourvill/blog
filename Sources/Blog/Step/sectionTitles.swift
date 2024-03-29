import Foundation
import Publish

extension PublishingStep where Site == Blog {
    static func sectionTitles() -> Self {
        .step(named: "Default section titles") { context in
            context.mutateAllSections { section in
                switch section.id {
                case .posts:
                    section.title = "Posts"
                case .thinks:
                    section.title = "Thinks"
                case .cv:
                    section.title = "CV"
                case .aqua:
                    section.title = "Aqua"
                }
            }
        }
    }
}
