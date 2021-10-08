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

    static func aquaStep() -> Self {
        .step(named: "Fetch Image") { context in
            do {
                try context.folder(at: .init("Resources/aqua"))
                    .files
                    .sorted(by: { $0.creationDate ?? .init() > $1.creationDate ?? .init() })
                    .enumerated().forEach { key, file in
                        let imgPath = "/aqua/\(file.name)"
                        context.addItem(.init(
                            path: "\(key)",
                            sectionID: .aqua,
                            metadata: .init(),
                            tags: [],
                            content: Content(
                                title: file.creationDate?.description ?? "",
                                description: "",
                                body: .init(
                                    html: "<img src=\"\(imgPath)\"/>"),
                                date: file.creationDate!,
                                lastModified: file.modificationDate!,
                                imagePath: .init(imgPath)
                            )
                        )
                        )
                    }
            } catch {}
        }
    }
}
