---
date: 2021-03-13 21:00
description: Mac M1 petit bilan apres deux mois d'utilisation
tags: 
---

# Mac M1 - 2 mois après

Je vois pas mal de tweet ou de question sur la fameuse puce M1. Je me suis posé beaucoup de question avant de passer le cap.

J'ai donc décidé de revendre mon MacBook Pro 13" pour un Mac mini M1 avec comme modification 16Go à la place des 8Go.

Pour donner un peu de context si vous etes de passage sans me connaitre, je suis developpeur backend PHP avec le framework Symfony, je fais également du Swift pour réaliser des apps iOS, et un peu de nuxt pour un poc perso.

## Les débuts
Une fois le plaisir du déballage terminé, le branchement et le début des galeres! Sur mes deux ecrans, l'un est pas compatible, pourquoi ? Aucune idée et ça restera sans response... J'ai revendu mes deux ecrans pour refaire mon setup d'écran.

## Les outils
Entre en scene Rosetta, l'outil d'émulation x86 et la c'est magique et incroyable. Puisque vous découvrez de semaine en semaine les mises à jours de vos outils favoris pour annoncer la compatibilité native et vous vous dites toujours : ah? parcequ'il etait en Rosetta lui ?

Le seul outil qui "galère" et ou j'ai vraiment senti rosetta c'est Unity (oui j'ai dev un peu un jeu pour tester)

## Dev php
J'ai donc installé mon env de boulot, nous avons une stack un poil plus ancienne et une stack vraiment fraiche.

Coté php aucun soucis, je l'utilise en install via brew, et j'utilise les autres services via Docker... 

## Docker
Même si il n'est pas encore completement ready ça fonctionne! Je l'utilise pour des projets persos ou souvent je lance des services redis, postgres. En fait pour faire simple si votre image existe pour ARM, elle fonctionnera.

Coté pro la ça coince... On a un elastic un peu vieux, et donc pas ARM. Ensuite un Varnish custom et donc pas ARM. En fait ca pourrait surrement etre rendu compatible, mais je ne souhaite pas bousculer la stack pro pour la rendre compatible pour mon Mac M1 perso.

## Xcode
Coté Xcode et dev iOS. Oh My God! C'est incroyable, ca compile à une vitesse dingue! Le simulator boot en 10 secondes meme pas! Le live preview est instantané. Bref que du bonheur, seul mes projets avec AdMob ne sont pas compatible sans certaines modifications ou alors il faut forcement utiliser l'iPhone pour debugger.

## Machine learning
La puce est vendu comme capatable de faire du ML. J'ai donc voulu réaliser un classifier, 950 images, deux categories + transformation, noise et autres... En 30 secondes c'est buildé! Le mac pro du boulot peine encore à faire quelques images... le test https://twitter.com/bourvill/status/1351586431081308163

## OBS et Stream
Je stream souvent le soir, et j'utilisais le macbook pour encoder et stream mon flux PC (via le plugin NDI).
J'avais une machine au taquet, prete à s'envoler avec les ventilateurs à fond apres 5min de stream. Maintenant le mac mini tourne à peine à 30% de puissance et surtout le : silence! Un bonheur! Il y'a juste un trick à faire pour rendre compatible le plugin NDI.

## Résumé
Vous l'aurez compris ce mac M1 est incroyablement puissant! Les 16Go sont totalement inutile! Meme avec docker tournant ca reste bas! Par contre j'aurai du prendre 512Go d'espace disque (Xcode, Unity, Docker... c'est gourmand en place). Le silence est vraiment un plus et c'est vraiment important de le dire car c'est une fatigue auditive et mentale en moins.

Le projet du boulot qui me force à utiliser mon mac du boulot me permet vraiment de me rendre compte à quel point tout est fluide sur le M1, un clic: la fenetre s'ouvre, un changement sur le KVM écran: instantané! vous savez ? le truc que vous faites sur votre mac et qui le fait clignoter 3 fois l'écran, en noir, puis bascule des fenetres, puis noir, et enfin ça s'affiche, et bien sur le M1 c'est immédiat! 

Si vous devais changer de mac et vous n'avez rien d'exotique, ne reflechissez pas: prenez un M1.

Je n'ai qu'une seule crainte... c'est la dépréciation du M1 se fasse plus rapidement qu'une puce Intel. Apple reste un vendeur de materiel, il y'aura donc un M1x, un M2, M2x... bref vous avez compris... et je pense que du coup nous allons passer à un mode de consommation plus fort et plus rapide et donc le sentiment d'avoir une machine plus lente ou alors simplement un abandon des mises à jours afin de mieux supporter/vendre les puces suivantes... Car avec une machine si puissante, pourquoi la changer à part pour un gadget software uniquement compatible avec la puce suivante?

Bref l'avenir nous le dira... Allez valide ton panier ;) tu ne le regretteras pas
