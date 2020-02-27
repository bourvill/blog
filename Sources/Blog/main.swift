import Foundation
import Plot
import Publish
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct Blog: Website {
    enum SectionID: String, WebsiteSectionID {
        case posts
        case thinks
    }

    struct ItemMetadata: WebsiteItemMetadata {}

    var url = URL(string: "https://maxime.marinel.me")!
    var name = "Bourvill blog"
    var description = ""
    var language: Language { .french }
    var imagePath: Path? { nil }
}

try Blog().publish(
    withTheme: .bootstrap,
    indentation: .tabs(1),
    at: nil,
    rssFeedSections: Set(Blog.SectionID.allCases),
    rssFeedConfig: .default,
    deployedUsing: nil,
    additionalSteps: [.sectionTitles()],
    plugins: [.splash(withClassPrefix: "")]
)
