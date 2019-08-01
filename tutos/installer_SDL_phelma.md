# Installer SDL_phelma

Tutoriel pour installer la librairie graphique SDL_phelma sur son pc Linux.

## Paquets nécessaires
Avant d'installer la librairie phelma il faut d'abord installer les librairies SDL de base :
* SDL 1.2
* SDL_image
* SDL_ttf
* SDL_sound
* SDL_draw

Tous ces paquets sont disponible dans les dépôts officiels des différentes distributions de Linux à l'exception de SDL_draw.

### Installation de SDL_draw
1. Télécharger la librairie : lien sourceforge https://sourceforge.net/projects/sdl-draw/
2. Décompresser l'archive SDL_draw-1.2.xx.tar.gz
3. Aller dans le dossier SDL_draw-1.2.xx
4. Installer SDL_draw :
```
$ ./configure
$ make
$ sudo make install
```
Pour plus d'information sur les option d'installation, se référer au ficher INSTALL dans le dossier SDL_draw-1.2.xx

## Installation de la librairie Phelma
1. Télécharger l'archive de la librairie sur le site http://tdinfo.phelma.grenoble-inp.fr/1AS1/bib.html
2. Aller dans le dossier SDL_phelma/src et ouvrir le Makefile
3. Ajouter au CFLAGS

```
-I/usr/lib -I/home/$USER/dossier/SDL_draw-1.2.13/include -I/usr/include/SDL
```

Remplacer $USER par votre nom d'utilisateur et dossier par le dossier dans lequel vous faites l'installation
4. lancer la commande make

## Après l'installation
Pour utiliser la librairie Phelma dans vos programme, il faudra ajouter dans vos Makefile :
 * Dans les CFLAGS :
 ```
-I/usr/local/include/SDL -I/usr/include/SDL -I/home/nikola/tmp/SDL_draw-1.2.13/include/
 ```
 * Dans les LDFLAGS :
 ```
-lSDLmain -lSDL -lSDL_ttf -lSDL_image  -lSDL_sound -lSDL_phelma -lSDL_draw
 ```
