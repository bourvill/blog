import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct Pocpublish: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://maxime.marinel.me")!
    var name = "Bourvill blog"
    var description = ""
    var language: Language { .french }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Pocpublish().publish(
    withTheme: .foundation2,
    indentation: .tabs(1),
    at: nil,
    rssFeedSections: Set(Pocpublish.SectionID.allCases),
    rssFeedConfig: .default,
    deployedUsing: nil,
    additionalSteps: [],
    plugins: [.splash(withClassPrefix: "")]
)
