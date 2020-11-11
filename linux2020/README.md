Plan de la conférence

# Présentation
## Linuxe c koi
Comme Windows, macOS, .. : un ensemble de programmes permettant d'utiliser un ordinateur. \
Linux a la particularité d'être libre, c'est à dire que son code source est ouvert : tout le monde peut le consulter. 
Par opposition, les codes sources de Windows et macOS sont fermés, ce sont des OS propriétaires.

### Petite histoire
1984, Microsoft MS-DOS, Unix, les deux payants et propriétaires ; Richard Stallman crée GNU, une "copie" gratuite et **libre** d'Unix \
En 1991 Linus Torvalds crée son propre système d'exploitation "Linux" (contraction de Linus et Unix) \
Les deux fusionnent pour créer **GNU/Linux** (GNU : programmes de base ; Linux : noyau)
Mais généralement on dit "Linux" en parlant de "GNU/Linux".


### Les distributions

À la différence de Windows ou MacOS, il existe différentes "versions" de linux. On appelle ces "versions" distributions.
D'une distribution à l'autre diffèrent :
* l'installation, qui peut être plus ou moins compliquée
* la gestion de l'installation des programmes
* les programmes préinstallés (Firefox, Mousepad...)

Une distribution est en quelque sorte l'emballage de Linux. Le coeur, lui, reste le même sur toutes les distributions. \
Il en existe toute une floppées qui ont chacune leurs spécificités et qui ciblent diffférents publics (allant du grand public jusqu'aux kékés spacemacs). Dans les plus connues, on retrouve :
* Debian
* Ubuntu
* Linux Mint
* Arch Linux
* Manjaro


### Les gestionnaires de bureau

On peut utiliser Linux en mode console, ou en mode graphique avec un Desktop Environment, qui s'occupe de tout ça :

* Bureau
* Gestionnaire de fenêtres
* Gestionnaire de l'affichage
* Environnement graphique
* Gestionnaire de sessions
* Outils graphiques pour contrôler le système (paramètres, gestionnaire de fichiers, ...)

### La philosophie linuxienne

Vous l'aurez compris, Linux est très **personnalisable**, \
D'une façon générale, le principe de base de Linux est que **c'est vous qui contrôlez votre ordinateur**. \
*là insérer rage random sur Windows genre euh Windows Update*
* vive le logiciel libre*
# Linux, sah.
## Et donc pourquoi Linux et pas Windaube ?

### Les soucis de Windows
* Tout est caché à l'utilisateur pour pas qu'il ne s'occupe que d'utiliser l'ordi comme Microsoft l'entend. Si quelque chose se passe mal, trouver la cause est compliqué.
* Quasiment tout lui est imposé (mises à jour, Edge, Store, OneDrive, Xbox, télémétrie, traçage, passage à Win10...). 
* Les mises à jour ont tendance à tout casser
* Drivers de merde (oui c'est un argument constructif)
* Pubs, notifs, télémétrie, installateurs gangés
* La RAM, Windows a très faim.
* L'espace disque, Windows a très faim.
* C'est très lourd de développer un programme sous Windows
* n'hésitez-pas si vous avez des idées pertinentes c'est relativement facile de trouver des trucs pour Windows

### Les bons points de Linux
* gestion de paquets
* gestion de dépendances
* mises à jour fréquentes
* force du libre (drivers, alternatives gratuites, ...)
* utilisation du terminal
* outils git, ssh, "bash" (pas vraiment un outil mais voilà), make...
-> idéal pour les développeurs 

## Mais il est quand même intéressant de garder Windows
blablabla dual-boot blabla
### Compatibilité
ok y a Wine, et même Proton pour les jeux qui marche bien, mais voilà, Autodesk, Adobe, LT-Spice*, les jeux multi

### Performances
Ca dépend de chaque machine. Les drivers nVidia ont tendance à être gangés. La batterie peut tenir plus ou moins longtemps. Faut tester.
On gagne __toujours__ à mettre Linux sur un vieux PC (à moins que les drivers soient gangés enfin les drivers c'est toujours un problème...)

### Linux sur Windows ??
Et non vous ne rêvez pas !
Bon ok c'est pas super Robotronikesque de parler de WSL mais c'est une bonne solution en attendant qu'on fasse les dual-boots et franchement si vous êtes contraints de devoir être souvent sur Windows c'est cool ! 
(voir les tutos de Phelma  ...)


# Manipulation
On va toucher au terminal. Ca ressemble à ça :
![](../images/terminal.jpg)

Bien que ça puisse faire peur aux premiers abords, c'est un outil très puissant qui permet de **tout** faire (quitte à *parfois* devoir se documenter), avec *un peu* d'expérience vous pourrez développez un programme dans un seul terminal ! (par contre utiliser Blender dans le terminal risque d'être compliqué, par exemple) 

## L'arborescence

C'est une notion importante à comprendre avant de commencer à utiliser le terminal. \
**coller-copier de déposer-glisser :** \
L'arborescence sous Linux correspond à la manière sont agencés les dossiers (directory en anglais) les uns par rapport aux autres.

![](https://raw.githubusercontent.com/robotronik/conferences/master/linux/Images/arborescence.png)

Tous les dossiers mènent à /. Ce dossier a pour petit nom root. Il est ce que l'on appelle la racine du système. De ce dossier découle une floppée d'autrse. Chacun à son utilité, nous allons voir quelques uns ensemble.

* home : ce dossier contient les fichiers des utilisateurs. C'est ici que se situe les données des utilisateurs.
* usr : ce dossier contient tous les binaires de l'utilisateur, leur documentation, des librairies, des header, etc …
* mnt : ce dossier est le dossier conventionnel pour monter des volumes (clé usb, lecteur cd, etc …). Il est possible de monter un volume où l'on veut dans son arborescence mais le système va monter par defaut les volume dans ce dossier.
* var : dans ce dossier se situe les applications/programmes installé par l'utilisateur.

Comme sur Windows, des chemins peuvent être absolus (définis à partir de la racine `/`, par ex : `/home/Documents/toto.txt`) ou relatifs (par exemple `Documents/toto.txt`). \
Attention, sur Linux les délimiteurs de dossiers sont des barres obliques `/` et non des barres obliques inversées `\`.

## Naviguer
### Savoir quel est le dossier courant
affiché avant $, ou commande `pwd`

### Changer de dossier
commande `cd cheminDossier` \
* `.` désigne le dossier courant : `cd .` ne fait rien
* `..` désigne le dossier parent : `cd ..`
* `~` désigne le dossier /home : `cd ~/Documents`

### Afficher le contenu d'un dossier
commande `ls`
* `ls` affiche le contenu du dossier courant
* `ls cheminDossier` affiche le contenu du dossier dont le chemin est cheminDossier

## Autocomplétion
Lorsque vous saisissez un chemin dans une commande, vous pouvez appuyez sur Tab pour autocompléter la fin du chemin lorsqu'il n'y a qu'une possibilité. S'il y en a plus, appuyez deux fois sur Tab pour les afficher.

## Créer un fichier
avec nano :
`nano mon_premier_fichier.txt`
![](..images/nano.jpg)
tada

## Exécuter un programme
si le programme est dans le dossier courant : `./programme` \
si ça n'a pas marché, faites `chmod +x programme` avant, et ouais Cristiano a su percer mon talent en linuxage ;)
### Exécution avec droits superutilisateur
c'est là que vous allez me défoncer \
`sudo` avant la commande, par exemple : `sudo nano ~/.bashrc` \
ou alors pour passer en mode superutilisateur pour toutes les prochaines commandes : `sudo su` \
pardonnez mon ignorance

## man
et surtout, pour savoir comment utiliser une commande : `man commande` \
-> `man man`

## Gestion de paquets
ça dépend des distribs :sob: ; je sais pas si c'est bien d'en parler, mais en tout cas je pense qu'il sera bien d'en parler en détail au moins à une conf !

### Debian et dérivés 
`apt` -> `man apt` \
toujours faire `apt update` (mise à jour des listes de paquets) \
pour installer firefox : `sudo apt install firefox`
pour supprimer firefox : `sudo apt remove firefox`

### Manjaro

#### avec pacman normal au calme
`pacman` \
installer : `pacman -Sy firefox`

#### AVEC YAY !!!!
* installer **yay** : `pacman -Sy yay`
* PROFIT : `yay code` (puis `^4`)
