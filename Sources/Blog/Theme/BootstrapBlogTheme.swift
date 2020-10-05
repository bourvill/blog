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
        Theme(htmlFactory: BootstrapBlogHTMLFactory(apps: App.allCases))
    }
}

private struct BootstrapBlogHTMLFactory<Site: Website>: HTMLFactory {
    let apps: [App]

    init(apps: [App]) {
        self.apps = apps
    }

    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css", "/css/apps.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: context.site.name),
                .container(
                    .row(
                        .class("row apps"),
                        .appsList(apps)
                    ),
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

    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css", "/css/code.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: context.site.name),
                .article(
                    .container(
                        .row(
                            .div(
                                .class("col-lg-8 col-md-10 mx-auto"),
                                .h2("Tags list"),
                                .forEach(page.tags.sorted()) { tag in
                                    .badgeTag(badge: .secondary, for: tag, on: context.site)
                                }
                            )
                        )
                    )
                )
            )
        )
    }

    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site, stylesheetPaths: ["/css/bootstrap.min.css", "/css/clean-blog.min.css", "/css/code.css"]),
            .body(
                .navBar(for: context, selectedSection: nil),
                .heading(h1: context.site.name),
                .article(
                    .container(
                        .row(
                            .div(
                                .class("col-lg-8 col-md-10 mx-auto"),
                                .itemList(
                                    for: context.items(
                                        taggedWith: page.tag,
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
        )
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
        .forEach(items) { item in
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
                                .badgeTag(badge: .secondary, for: tag, on: site)
                            }
                        )
                    )
                ),
                .hr()
            )
        }
    }

    static func badgeTag<T: Website>(badge: BadgeType, for tag: Tag, on site: T) -> Node {
        .a(
            .class("badge \(badge.rawValue)"),
            .href(site.path(for: tag)),
            .text(tag.string)
        )
    }

    static func appsList(_ apps: [App]) -> Node {
        .forEach(apps) { app in
            .div(
                .class("col"),
                .div(
                    .class("row"),
                    .div(
                        .class("col-1"),
                        .img(
                            .width("25"),
                            .height("25"),
                            .src(app.img)
                        )
                    ),
                    .div(
                        .class("col"),
                        .h5(.text(app.name)),
                        .a(
                            .class("btn btn-primary btn-sm"),
                            .href(app.url),
                            .text("Download")
                        )
                    )
                )
            )
        }
    }

    static func card() -> Node {
        .div(
            .class("card"),
            .img(
                .class("card-img-top"),
                .src("/img/apps/bank.png")
            ),
            .div(
                .class("card-body"),
                .h5(
                    .class("card-title"),
                    .text("My title")
                ),
                .p(
                    .class("card-text"),
                    .text("test")
                ),
                .a(
                    .class("btn btn-primary"),
                    .href(""),
                    .text("link")
                )
            )
        )
    }
}

private enum BadgeType: String {
    case secondary = "badge-secondary"
}
