interface ExpPro {
	enterprise: String
	tech: String
	description: String
}

export const exppros: ExpPro[] = [
	{
		enterprise: 'Waykonect',
		tech: 'Swift / SwiftUI / SPM',
		description: `Arrivé en tant que \"junior\" sur la techno iOS, j'ai très vite pris la place de lead grace à un solid background tech 
        me permettant ainsi d'accompagner l'équipe dans migraton de VIPER/Storyboard vers un pattern MVVM/SwiftUI sans coupure ou rupture dans l'application.
        Nous avons packagé notre DesignSystem et notre code grace à des packages SPM testé unitairement, nous permettant de maintenir deux applications en reduisant l'effort.
        Voulant transmettre ma passion du code et de la technologie j'anime l'équipe à rester en eveil sur les bonnes pratiques et sur les divers "Kit" que 
        Apple fournis nous permettant d'être force de proposition pour le metier.
        `
	},
	{
		enterprise: 'Kozikaza',
		tech: 'Symfony2 / Api-platform / Kubernetes',
		description: `Evolution de la platform social, detachement en
			micro service des evolutions (ex: api des pros, api media...) le but étant de construire une
			architecture modulaire et facilement maintenable. CI en github Action
        `
	},
	{
		enterprise: 'Skores',
		tech: 'Symfony2',
		description: `Ré écriture d’un site sur le domaine des courses hippiques Migration d’un
			code legacy vers une application symfony 2 avec une difficulté sur la base avec différents
			encodages Ré écriture de l’outil d’import de cote Création d’un outil d’import de cote en
			symfony 2 containeriser. Le but était d’obtenir un import de cote proche du realtime. Avec
			comme difficulté de rester conforme à une base de donnée mal structurée
        `
	},
	{
		enterprise: 'Motoblouz',
		tech: 'Symfony2 / Docker / RabbitMQ',
		description: `Développement d’une plateforme e-commerce propriétaire International
			Evolution de la plateforme afin qu’elle soit « multisite »,la plateforme reste la meme, mais
			permet de supporter différentes langues.
            Elasticsearch Refonte de la liste produit sur elasticsearch afin d’obtenir un realtime
            Tracking de colis Création d’un outil de tracking de
			colis interne, permettant de suivre et de remonter des alertes en fonction des divers
			transporteurs afin d’être pro actif sur un retard de livraison client
            WMS Création d’un outil
			interne afin de gérer des entrepôt, de la création de la commande, sa préparation, sa
			livraison. Projet feuille blanche, sur ce projet j’ai eu l’occasion de former l’équipe à d
			bonnes pratiques tels que les tests unitaires, fonctionnels, mais également sur la gestion de
			versionning avec la validation de code par Pull Request. J’ai également apporté à l’équipe
			deux nouvelles technologies, docker et RabbitMq en les formants sur l’utilisation de ces
			outils. Nous avons pris le partie de déployer docker en production
        `
	},
	{
		enterprise: 'BLM Technologies',
		tech: 'Symfony2 / .Net',
		description: `Gestionnaire de projet et lead développeur Interne Refonte du site
			internet GIP - Plateforme de MOOC Evolution de la plateforme existante, aussi bien code que
			architecture. Mise en place du réplication et d’un serveur de fallback. Conception et
			développement des évolutions de l’application en relation avec le client. Transformation du
			modele cahier des charges en modele agile et accompagnement du client sur l’écriture des
			sprints
            Café méo Gestion de l’infrastructure. Proposition d’un plan d’upgrade de leur
			infrastructure et installation d’une réplication
            3 Suisses Découverte du .Net à travers la réalisation d’un organigramme interne à l’entreprise sur la plateforme SharePoint
        `
	},
	{
		enterprise: 'Attraktiv - Efidev',
		tech: 'Symfony 2 / Infra Ops',
		description: `Développement d’applications web et mobiles avec le cadre méthodologique
			SCRUM au sein d’une équipe de 2 à 3 développeurs et d’un product Owner Toutes les applications
			ont été livrées par incrément à l’issue de sprints d’une semaine. L’état de fini est : 100% de
			tests unitaires réussis, couverture de test en moyenne de 70%. Interne Virtualisation de tous
			les serveurs de l’entreprise Outil de gestion - Projet interne Conception et développement
			d’une application de gestion simplifiée pour les PME. Gestionnaire de caves - Invinôme
			Administration du stockage de vin (référentiel, stock, clients, factures) et mise à
			disposition des informations de la cave client (graphiques, marketplace…). Dashboard
			commercial - ProwebCE Mise en place d'un outil de création de devis et ajout de nouvelles
			fonctionnalités sur une ancienne application pour ProwebCE, l'une des principales entreprises
			de prestations aux comités d’entreprise. Utilisation de components Symfony2 : twig, injection
			de dépendances, console, event dispatcher
        `
	},
	{
		enterprise: 'Motoblouz',
		tech: 'Symfony 1 / 1.4',
		description: `Développement d’une plateforme e-commerce propriétaire Mise en place de
			la gestion des bons de réduction, points de fidélité, du système de feedback « Ekomy » Passage
			de l’administration de Symfony 1.0 à 1.4 Utilisation du moteur de recherche Sphinx
        `
	},
	{
		enterprise: 'Prowebce',
		tech: 'PHP',
		description: `Legacy Développement d’un ERP En version 8 (php legacy) Factorisation du service
			de mails client Création d’un assistant de lettrage automatique Refonte de la mailing list
			Refonte d’un module de quizz En version 12 (refonte sur symfony) Connexion des mails aux
			Events Symfony Mise en place d’un signalement d’abus Migration de SVN vers GIT Mise en place
			du versionning Déploiement serveur des sites
        `
	}
]
