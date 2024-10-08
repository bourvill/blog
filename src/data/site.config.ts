interface SiteConfig {
	author: string
	title: string
	description: string
	lang: string
	ogLocale: string
	shareMessage: string
	paginationSize: number
}

export const siteConfig: SiteConfig = {
	author: 'Maxime Marinel',
	title: 'Bourvill<Blog>',
	description: 'Un simple blog pour parler de geekeries',
	lang: 'fr-FR',
	ogLocale: 'fr_FR',
	shareMessage: 'Share this post',
	paginationSize: 6
}
