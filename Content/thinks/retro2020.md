---
date: 2020-12-23 21:00
description: Une simple retro 2020
tags: think
---

# Rétrospective 2020

## Boulot en cours
Toujours chez Kozikaza! Et oui, cela en étonne plus d’un! 1 an et 10 mois à l’heure ou j’écris ces lignes. Et la lassitude n’est toujours pas là, j’ai toujours autant de plaisir à travailler là. L’équipe est dingue! 

Le lead dev à changé de team et je me retrouve à gérer la partie back. Des choix à faire, les assumer, reconnaitre ses erreurs. Samuel mon manager, m’encadre bien, m’écoute, me boost! Il est incroyable! 

Bref 2020 c'est mes premiers entretiens à faire passer, des décisions importantes, des décisions difficiles… Devoir rompre une période d’essai n’est vraiment pas une chose facile...

Heureusement que le boulot ne se résume pas qu’a cela, puisque j’ai de nouveau le plaisir de travailler avec Francois! (Coucou @fbally). Il vient m’épauler sur le back. Il m'aide à me laisser un peu plus de temps sur les changements impactant pour l’entreprise, puisque j’oriente notre architecture vers le micro-service. L’équipe front, mobile est dingue! Des gens passionnants et passionnés !

Coté serveur toujours sur Kubernetes! Quel système de dingue! J’ai même passé l’ensemble de mes projets perso sur cet env serveur! Mais la configuration reste compliqué et avec php c’est un peu du rodéo, mais cela fait partie des chantiers 2021, de l’optimisation code, et de l’optimisation serveur! Des défis passionnants!

## Les apps
### Mazout'
Mazout est une application pour trouver et acheter son carburant moins cher. Lancé en milieu d’année. Le back a d’abord été fait avec Symfony… Mais j’ai ensuite bougé l’ensemble du code sur Vapor un framework HTTP fait en Swift. Mazout est donc ma premier App/Stack full swift!

Concernant les chiffres je reste mitigé… L’application ne décolle pas et je suis confronté pour la premier fois à l’ASO… Et franchement quelle galère! 

Je suis pour l’instant à 126 téléchargements… Mais je n’arrive pas à décoller sur la page d’app store, je me trouve derrière des simulateurs de conduite sur le mot « Essence » Un jour je percerai les mystères de l’ASO, d’ailleurs si tu as des tips hésite pas!

### wallabag
Wallabag est un projet open source permettant de sauvegarder des pages web pour les lires plus tard et les conserver. Pratique pour sauvegarder des articles médium par exemple.

Même si j’ai peu codé dessus cette année, de mémoire seulement la migration vers SwiftUI, je reste le seul dev dessus. Durant l’année, j'ai été aidé sur le triage des tickets et franchement ça m’a fait du bien! Je suis content car il y’a maintenant une stabilité de l’application et peu de retour sur des problèmes de synchronisation.

L’application a été téléchargé environ 1,9k cette année, une augmentation de 3,3% par rapport à l’année dernière. Merci aux personnes qui on fait des dons (48 en augmentation de 140% - récompense je pense de la stabilitée)

### Deviner le mot
Surement l’application la plus simple du monde : Faire deviner le mot!
C’est une vieille application que j’ai migré cette année en SwiftUI, et j’ai ajouté des achats in-app. Elle a été refusé car : trop moche! Je pense qu’a partir du moment ou l’on rajoute des achats in-app le niveau d’exigence doit monter durant la review. Je tenterai de la rendre plus jolie et originale en 2021 car elle reste ma plus grosse app téléchargé: 2,42k cette année en augmentation de 12%.

### Radio Stream Live
Mon application de radio, elle aussi bien moche... Il faut que je rajoute le design dans mes compétences. Une seul modification cette année, le changement de l’url de reference pour la liste des radios, migré de amazon S3, vers? Vers?? Vers… Vapor! Bien sur !
Elle a été téléchargé 1,20k en augmentation de 8,1%

### Biker Weather
Retiré du store cette année, cette application de météo pour motard n'a jamais réussi à décoller.

### Compta facile
Elle fait -50% cette année, elle n'est plus maintenue.

### Anagramme le jeu
Mon deuxieme jeu sur l'app store, je ne l'ai pas fait évolué depuis un moment et il n'est plus du tout intégré avec les nouveaux écrans. 488 téléchargements, en baise de 49%.

## Les sites
### Annonces-airsoft
Mon bon vieux site de petites annonces! Google a changé de politique concernant la monétisation des sites vendants des armes… 

Oui oui pour google l’airsoft c’est des armes.

Alors effectivement selon le dictionnaire une arme est: Tout objet, appareil, engin qui sert à attaquer (arme offensive) ou à se défendre (arme défensive). 

Une bille de plastique...

Je ne vais pas rentrer dans ce profond débat à propos des armes… Puisque si bien pour google il n’y à pas débat… Il decide, point.

J’ai donc du rapidement enlever les ads du site pour éviter un BAN par google.

Mais voila, cela m’a vraiment dégouté et j’ai eu envi de le fermer, je ne pratique plus l’airsoft depuis un long moment… Mais un pote à dit qu’il utilisé souvent mon site et que j’étais un des seul restant… C’est sur… quand google fait une épuration en touchant au portefeuille…

C’est un site pas fou un terme de techno, du symfony et un machine learning (fait avec turicreate) sur les messages pour contrer le spams.

Je vais l’upgrade cette année pour promouvoir mes apps. 42k visiteurs uniques, et 726k pages vues.

## Ops
Coté ops, full migration sur k8s et full CI pour les déploys, c'est le pied : kubctl apply -k 

## Google & privacy
2021 sera l’année ou je vais tenter de sortir de Google, cela va être dur… Je suis vraiment formaté à sa pertinence… et je ne vois pas comment me passer de YouTube, cela reste un de mes medias préférés.

Mais voila, je supporte de moins en moins de naviguer sur un site et me retrouver ensuite inondé de pub basée sur mon profil. Je ne suis pas contre la pub, bien au contraire, je sais qu’elle est un revenu pour bon nombre, je parle bien entendu d’une pub bien intégrée et pas la pub sur des bon vieux médias français… REGARDE LA PUB 30 SECONDES SANS QUITTER LE NAVIGATEUR BITCH!

Je supporte de moins en moins ce dicta à propos des sites (l’histoire avec annonces-airsoft).

A propos de la privacy, je vais essayer de supprimer mon compte Facebook, je ne poste plus rien dessus depuis très longtemps, mais voila l’app est la… et je lance chaque matin, chaque moment vide… Et le pire pour voir du vide… On dirait presque du tabagisme…

## Swift, swift, SWIFT et 2021!
J’ai passé beaucoup de temps en dehors du boulot à coder en Swift, sur iOS principalement et maintenant coté serveur avec Vapor. 
Je trouve ce language vraiment incroyable et en constante évolution. 

Bon le async/await qui arrive me fait peur… j’ai peur de voir le meme genre de délire qu’avec le javascript… Alors ça a évité des tonnes de middleware, mais ça a enlevé toute profonde conception: Bah t’as qu'à foutre un await devant! 

Bref il suffit de reste 2 min avec moi et de prononcer le mot « Javascript » pour entendre des insultes. Javascript ce language stackoverflow driven… npm install … vulnerability found 700…

Alors 2021 sera encore plus Swift que Swift! Puisque 2021 sera l’année ou je vais pouvoir faire du swift aussi dans le cadre du travail pour une app encore secrète pour l’instant, mais le poc est déjà sur les rails.

2021 sera aussi l'occasion de sortir de nouveau projet :) Un tournera autour de la plateforme Twitch, et un autre encore secret, mais pourrait sortir de ça un beau projet Saas.

Je commence à gagner aussi en confiance sur ma capacité à faire du Swift en entreprise puisque depuis Octobre on a tenté à plusieurs reprise de me débaucher pour faire du Swift. Mais je refuse, si tu te demandes pourquoi tu n’as pas du lire le début =) 

2021 sera aussi l'achèvement de la construction/renovation de la maison. Deux ans de travail, soir et weekend pour construire soit même sa maison, c’est une expérience dingue!

2021 sera aussi l’année du mariage (oui le site est fait avec vapor 😅)

2021 sera riche en émotion et j'espere que 2021 tiendra ses promesses! 