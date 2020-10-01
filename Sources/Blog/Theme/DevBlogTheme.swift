//
//  DevBlogTheme.swift
//  Blog
//
//  Created by Marinel Maxime on 30/09/2020.
//

import Foundation
import Plot
import Publish

public extension Theme {
    static var devBlog: Self {
        Theme(
            htmlFactory: DevBlogFactory()
        )
    }
}

final class DevBlogFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site, stylesheetPaths: ["/css/theme-1.css", "/css/code.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .div(
                    .class("main-wrapper"),
                    .section(
                        .div(
                            .h2("Dev Blog", .class("heading")),
                            .class("container text-center")
                        ),
                        .class("cta-section theme-bg-light py-5")
                    ),
                    .section(
                        .class("blog-list px-3 py-5 p-md-5"),
                        .div(
                            .class("container"),
                            .itemList(
                                for: context.allItems(
                                    sortedBy: \.date,
                                    order: .descending
                                ),
                                on: context.site
                            )
                        )
                    )
                ),
                .script(.src("https://use.fontawesome.com/releases/v5.7.1/js/all.js"))
            )
        )
    }

    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: section, on: context.site, stylesheetPaths: ["/css/theme-1.css", "/css/code.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .div(
                    .class("main-wrapper"),
                    .section(
                        .div(
                            .h2("Dev Blog", .class("heading")),
                            .class("container text-center")
                        ),
                        .class("cta-section theme-bg-light py-5")
                    ),
                    .section(
                        .class("blog-list px-3 py-5 p-md-5"),
                        .div(
                            .class("container"),
                            .itemList(
                                for: section.items,
                                on: context.site
                            )
                        )
                    )
                ),
                .script(.src("https://use.fontawesome.com/releases/v5.7.1/js/all.js"))
            )
        )
    }

    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: item, on: context.site, stylesheetPaths: ["/css/theme-1.css", "/css/code.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .div(
                    .class("main-wrapper"),
                    .article(
                        .class("blog-post px-3 py-5 p-md-5"),
                        .div(
                            .class("container"),
                            .header(),
                            .div(
                                .class("blog-post-body"),
                                .contentBody(item.body)
                            )
                        )
                    )
                ),
                .script(.src("https://use.fontawesome.com/releases/v5.7.1/js/all.js"))
            )
        )
    }

    func makePageHTML(for item: Page, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: item, on: context.site, stylesheetPaths: ["/css/theme-1.css", "/css/code.css"]),
            .body(
                .header(for: context, selectedSection: nil),
                .div(
                    .class("main-wrapper"),
                    .article(
                        .class("blog-post px-3 py-5 p-md-5"),
                        .div(
                            .class("container"),
                            .header(),
                            .div(
                                .class("blog-post-body"),
                                .contentBody(item.body)
                            )
                        )
                    )
                ),
                .script(.src("https://use.fontawesome.com/releases/v5.7.1/js/all.js"))
            )
        )
    }

    func makeTagListHTML(for _: TagListPage, context _: PublishingContext<Site>) throws -> HTML? {
        HTML()
    }

    func makeTagDetailsHTML(for _: TagDetailsPage, context _: PublishingContext<Site>) throws -> HTML? {
        HTML()
    }
}

private extension Node where Context == HTML.BodyContext {
    static func navBar<T: Website>(for context: PublishingContext<T>, selectedSection _: T.SectionID?) -> Node {
        let sectionIDs = T.SectionID.allCases

        return .ul(
            .class("navbar-nav flex-column text-left"),
            .forEach(sectionIDs) { section in
                .li(
                    .class("nav-item"),
                    .a(
                        .class("nav-link"),
                        .href(context.sections[section].path),
                        .i(
                            .class("fas fa-home fa-fw mr-2")
                        ),
                        .text(
                            context.sections[section].title
                        )
                    )
                )
            }
        )
    }

    static func itemList<T: Website>(for items: [Item<T>], on _: T) -> Node {
        .forEach(items) { item in
            .group(
                .div(
                    .class("item mb-5"),
                    .div(
                        .class("media"),
                        .div(
                            .class("media-body"),
                            .h3(
                                .class("title mb-1"),
                                .a(.href(item.path), .text(item.title))
                            ),
                            .div(
                                .class("intro"),
                                .text(item.description)
                            ),
                            .a(.class("morre-link"), .href(item.path), "Read more &rarr;")
                        )
                    )
                ),
                .hr()
            )
        }
    }

    static func header<T: Website>(
        for context: PublishingContext<T>,
        selectedSection _: T.SectionID?
    ) -> Node {
        let sectionIDs = T.SectionID.allCases

        return .header(
            .class("header text-center"),
            .h1(.text(context.site.name), .class("blog-name pt-lg-4 mb-0")),
            .nav(
                .class("navbar navbar-expand-lg navbar-dark"),
                .div(
                    .id("navigation"), .class("collapse navbar-collapse flex-column"),
                    .div(
                        .class("profile-section pt-3 pt-lg-0"),
                        .img(.class("profile-image mb-3 rounded-circle mx-auto"), .src("/img/IMG_1469.jpg")),
                        .div(.class("bio mb-3"), "Hi, my name is Maxime Marinel. Welcome on my blog."),
                        .ul(
                            .class("social-list list-inline py-3 mx-auto"),
                            .li(.class("list-inline-item"))
                        ),
                        .hr()
                    ),
                    .navBar(for: context, selectedSection: nil)
                )
            )
        )
    }
}
