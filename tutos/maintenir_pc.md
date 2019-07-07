# Maintenance des ordinateurs du club

## Système d'exploitation
Les ordinateurs du club sont normalement tous sous Manjaro à l'exception des Raspberry Pi qui peuvent être en général soit sous Raspbian soit sous Arch Linux ARM.

Manjaro est une distribution de Linux basée sur Arch Linux. Les principales différences entre les deux sont :
* La méthode d'installation :
  * En console pour Arch
  * Graphique pour Manjaro
* La récence des paquets : sur Arch, les paquets sont rapidement testé (1 à 2 jours) et mis dans les dépôts tandis que sur Manjaro la phase de test est plus longue (plusieurs jours/semaines)
* Les configurations :
  * Tout est à faire sur Arch. Après l'installation, tous les fichiers de configurations sont pour la plupart à faire soi-même
  * Vu que la plupart du temps Manjaro est installé avec une interface graphique toute prête, des fichiers de configurations par défaut sont déjà présent.

Cependant, vu que Manjaro est basée sur Arch, ces deux distribution utilisent des outils similaires. Par exemple, le gestionnaire de paquet de base est *pacman*.

Un des gros avantage de ces deux distributions est le système de mis à jours. Une fois la distribution installée il n'y a plus à s'inquiéter pour les changements de version !!
En effet, ces distribution sont qualifiées de *Rolling Realease*. Cela veut dire que une fois installée, dès qu'une nouvelle version du noyau est disponible elle sera installée dans le cas de Arch Linux et proposé pour Manjaro.

De plus, ces deux distributions peuvent utilisé des paquets issus du *AUR* (Arch User Repository). C'est un dépôt où l'on peut retrouver des paquets fait par la communauté dans le cas où ils ne sont pas disponible dans les dépôts officiels.

## Gestion des paquets
Au club, nous n'utilisons pas pacman seul car nous avons installés sur les ordinateurs des paquets provenant du AUR. Nous utilisons donc ce que l'on appelle un *AUR Helper*. Celui utilisé au club est *yay*. Les AUR Helpers permettent de gérer la mise à jours des paquets en provenance su AUR en plus de ceux provenant des dépôt officiels.

### Mettre à jour
Pour mettre à jour un pc il faudra donc ouvrir un terminal et entrer la commande :
```
$ yay -Syu
```

Si l'on ne veut pas mettre à jour un paquet, on peut spécifier :
* Si le paquet provient des dépôts officiels
```
IgnorePkg=nom_du_paquet
```
dans le fichier de configuration de pacman (/etc/pacman.conf)

* Si le paquet provient de l'AUR il vous sera demander lors de la mise à jour quels paquets vous ne voulez pas mettre à jour.

### Installer un paquet
Pour installer un paquet, entrer la commande dans un terminal :
```
$ yay -S nom_du_paquet
```

### Supprimer un paquet
Pour supprimer un paquet, entrer la commande dans un terminal :
```
yay -Rs nom_du_paquet
```
