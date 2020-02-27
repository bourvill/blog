//
//  BootstrapBlogTheme.swift
//  Blog
//
//  Created by Marinel Maxime on 27/02/2020.
//

import Foundation
import Plot
import Publish

extension Theme {
    static var bootstrap: Self {
        Theme(htmlFactory: BootstrapBlogHTMLFactory())
    }
}

private struct BootstrapBlogHTMLFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: context.site.name),
                .container(
                    .row(
                        .div(
                            .class("col-lg-8 col-md-10 mx-auto"),
                            .itemList(
                                for: context.allItems(
                                    sortedBy: \.date,
                                    order: .descending
                                ),
                                on: context.site
                            )
                        )
                    )
                )
            )
        )
    }

    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: section, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: section.title),
                .container(
                    .row(
                        .div(
                            .class("col-lg-8 col-md-10 mx-auto"),
                            .itemList(
                                for: section.items,
                                on: context.site
                            )
                        )
                    )
                )
            )
        )
    }

    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: item, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css", "/css/code.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: item.title),
                .article(
                    .container(
                        .row(
                            .div(
                                .class("col-lg-8 col-md-10 mx-auto"),
                                .contentBody(item.body)
                            )
                        )
                    )
                )
            )
        )
    }

    func makePageHTML(for _: Page, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language))
    }

    func makeTagListHTML(for _: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML(
            .lang(context.site.language))
    }

    func makeTagDetailsHTML(for _: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML(
            .lang(context.site.language))
    }
}

private extension Node where Context == HTML.BodyContext {
    static func container(_ nodes: Node...) -> Node {
        .div(.class("container"), .group(nodes))
    }

    static func row(_ nodes: Node...) -> Node {
        .div(.class("row"), .group(nodes))
    }

    static func navBar<T: Website>(for context: PublishingContext<T>, selectedSection _: T.SectionID?) -> Node {
        let sectionIDs = T.SectionID.allCases

        return .nav(
            .class("navbar navbar-expand-lg navbar-light fixed-top"),
            .id("mainNav"),
            .container(
                .a(
                    .class("navbar-brand"),
                    .href("/"),
                    .text("Home")
                ),
                .div(
                    .class("collapse navbar-collapse"),
                    .id("navbarResponsive"),
                    .ul(
                        .class("navbar-nav ml-auto"),
                        .forEach(sectionIDs) { section in
                            .li(
                                .class("nav-item"),
                                .a(
                                    .class("nav-link"),
                                    .href(context.sections[section].path),
                                    .text(context.sections[section].title)
                                )
                            )
                        }
                    )
                )
            )
        )
    }

    static func heading(h1: String) -> Node {
        .header(
            .class("masthead"),
            .attribute(named: "style", value: "background-image: url('/img/home-bg.jpg')"),
            .div(.class("overlay")),
            .container(
                .row(
                    .div(
                        .class("col-lg-8 col-md-10 mx-auto"),
                        .div(
                            .class("site-heading"),
                            .h1(.text(h1)),
                            .span(
                                .class("subheading"),
                                .text("Another blog")
                            )
                        )
                    )
                )
            )
        )
    }

    static func itemList<T: Website>(for items: [Item<T>], on site: T) -> Node {
        return .forEach(items) { item in
            .group(
                .div(
                    .class("post-preview"),
                    .a(
                        .href(item.path),
                        .h2(.text(item.title)),
                        .p(
                            .class("post-meta"),
                            .text(item.description)
                        ),
                        .div(
                            .forEach(item.tags) { tag in

                                .badge(type: .secondary,
                                       .a(
                                           .href(site.path(for: tag)),
                                           .text(tag.string)
                                       ))
                            }
                        )
                    )
                ),
                .hr()
            )
        }
    }

    static func badge(type: BadgeType, _ content: Node...) -> Node {
        .span(
            .class("badge \(type.rawValue)"),
            .group(content)
        )
    }
}

private enum BadgeType: String {
    case secondary = "badge-secondary"
}
