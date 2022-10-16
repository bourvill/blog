---
date: 2022-10-16 21:00
description: Petit debrief
tags: 
---

# Mazout passe au journal de 20h sur TF1!

![jt](/img/mazout-20h.png)

Lundi mon application pour trouver du carburant « [Mazout](https://apps.apple.com/us/app/mazout-prix-de-lessence/id1442054061) » est passée au journal de 20h! 

Alerté par un tweet de [@Kevin](https://twitter.com/nvkkftw?s=21&t=4A1spydMKYMIjSDRvPiyUg), 
puis un message slack de [@Mathieu](https://twitter.com/morchip13?s=21&t=4A1spydMKYMIjSDRvPiyUg), ma soirée c’est transformée en expérience de dingue à vivre ! 

Je n'ai pas vu le reportage en direct... et je peine à y croire.


## Le premier réflexe!
Le premier réflexe est de lancer mon app voir si le backend répond... J’ai des stations qui s’affichent, ouf! 

## La suite d'une soirée amusante 

Ensuite j’ai regardé mon matomo pour voir si il y’a du traffic sur l’app, et là ! C’est la claque!

D'habitude avec un rythme de croisière de 100 users/j , ici en 30 min je suis déjà à 1000 user ! 

## Le second réflexe
Regarder que côté serveur c'est pas entrain de cramer !

![jt](/img/this-is-fine.jpg)

Un backend avec [Vapor](https://vapor.codes), des queries propre et des index en db. ça tank sans soucis!

Les temps de réponse sont bons et ne montent pas, juste un cpu qui montera à 60% durant la soirée.

Côté serveur je suis sur k8s chez scaleway autant dire que en cas de besoin j'avais la puissance à porté de clic ( sauf côté db ).

## Après l’euphorie
La première inquiétude: avec la pénurie les gens cherchent du carburant, mais ce n'est pas le but de mon app.

Mon application propose de trouver du carburant moins cher, par d’alerter sur la fermeture/pénurie d’une station… 
C’est maintenant la crainte d’avoir de mauvais avis sur le store… et ils commencent à arriver…

Heureusement quelques jours plus tôt j’avais ajouté une petite modale pour avertir l'utilisateur de la difficulté de la situation.


## Statistique 
Cette première journée ( qui a commencé à 20h ) finira avec 2200 visiteurs sur l’app.

Il me reste à attendre les statistiques de téléchargement… Le chiffre tombe toujours plus tard avec Apple.

J’apprends donc quelques jours plus tard que ça sera donc 5000 téléchargements de mon application en journée (soirée).


### Privacy
Pourquoi cet écart ? 

J’ai fait le choix de respecter les utilisateurs ne voulant pas être suivis dans l’application, dans cet écart, il y’a probablement des personnes qui n’ont pas lancés l’application mais aussi surtout des gens qui veulent une vie privée (motif marketing Apple, ce n’est donc pas étonnant d’avoir un écart)
Sachant également que la statistique de téléchargement, Apple applique lui aussi un respect de vie privée en fonction des choix de l’utilisateur.

D’ailleurs, si vous voulez en savoir plus sur votre vie privée allez dans Réglages > Confidentialité et sécurité > Rapport de confidentialité des apps.

Les jours suivants le nombres de téléchargement retombe à 800 dl/j alors que normalement on est autour des 7dl/j. Et le nombre de visiteur à 500 visiteurs jours.


## Bilan
Je suis vraiment content d’avoir vécu ce moment, on est loin de l’effet Capital, sauf pour les émotions 😍 il me reste maintenant à fidéliser ces nouveaux utilisateurs.