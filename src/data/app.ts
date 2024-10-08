interface App {
	name: String
	link: String
	description: String
}

export const apps: App[] = [
	{
		name: "Mazout'",
		link: 'https://mazout.info',
		description:
			"(Swift + SwiftUI + Vapor) Application pour trouver des stations essences avec le carburant le moins cher. Creation de l'api en utilsant Vapor"
	},
	{
		name: 'Deviner le mot',
		link: 'https://www.district-web.fr/deviner-le-mot',
		description:
			"(SwiftUI) Application type de jeu times'up, ou il faut faire deviner le mot en réalisant un mime par exemple ou en dessinant"
	},
	{
		name: 'Loa Tracker',
		link: 'https://www.district-web.fr/loa-tracker',
		description: '(SwiftUI) Application permettant de suivre une LOA'
	},
	{
		name: 'Opinion',
		link: 'https://opinion.district-web.fr',
		description: '(SwiftUI + IA) Application MacOS permettant de repondre aux Avis AppStore'
	},
	{
		name: 'Radio Stream Live',
		link: 'https://www.district-web.fr/radio-stream-live',
		description: "SwiftUI Application permettant d'écouter des radios, striké par Apple"
	},
	{
		name: 'Reef buddy',
		link: 'https://www.district-web.fr/reef-buddy',
		description:
			'(SwiftUI, cross platform MacOS + iOS) Application permettant de suivre un aquarium récifal'
	},
	{
		name: 'Stop sms',
		link: 'https://www.district-web.fr/stop-sms',
		description: 'Application permettant de bloquer les SMS indésirables'
	},
	{
		name: 'Barista',
		link: 'https://barista.district-web.com',
		description:
			'Egalement disponible sur VisionOS - Caffeine tracker (Swift + SwiftUI + Vapor) Application pour aidez à suivre la consommation de café.'
	}
]
