# Rédiger des documents propres avec Latex

Sommaire
1. LaTeX c'est quoi ?
2. Pourquoi LaTeX ?
3. Les bases
    * Comment éditer un document LaTeX ?
    * Commencer un nouveau document
    * Les parties
    * Les listes
    * Les images
    * Les équations
4. Mise en page
    * Marges
    * Haut/bas de page
    * Couleur
    * Styles
5. Outils utiles
    * CTAN
    * Overleaf/ShareLatex
    * Beamer
    * Pandoc
    * Google (ou Ecosia, DuckDuckGo, Qwant)


## LaTeX c'est quoi ?

LaTeX est un langage de description de document. Ce langage permet d'écrire et d'inclure du contenu (comme des images), tout en incluant des informations sur ces différents contenus. Ces informations peuvent être de différents types :
* relations hiérachiques (création d'une partie, d'un chapitre, d'une section, ...)
* relations ensemblistes (listes numérotées ou non)
* formatage mathématique
* citations bibliographiques
* ...


Il permet donc d'éditer des documents sans vraiment se préoccuper de sa forme, pour se concentrer sur le fond. À la différence d'éditeurs comme MS Word ou LibreOffice, la mise en forme est entièrement gérée lors de la compilation du document.

Ce langage est souvent utilisé dans le monde de la recherche pour l'édition d'article, de thèse ou encore de rapport de stages ou de mémoires. 

## Pourquoi LaTeX ?

LaTeX étant un langage, l'utilisateur ne voit pas en temps réel le résultat final de son travail, contrairement à MS Word ou LibreOffice (qui sont des WYSIWYG, "What You See Is What You Get"). Son intérêt n'est donc pas évident au premier abord.

Comme tous les outils, son utilité dépend de son application. Or, LaTeX est supérieur pour éditer des documents où le fond a une importance plus grande que la forme.
Par exemple, il est sage de l'utiliser pour rédiger des document scientifiques et techniques, mais n'est pas adapté pour concevoir une affiche ou un flyer publicitaire.

Document | Article | Flyer
---------|---------|------
Importance fond vs forme | 70/30 | 30/70
Éléments graphiques | . | ++
Eléments textuels | ++ | --
Complexité graphique | -- | ++
Outil | LaTeX | Publisher/Scribus


Dans le domaine de la rédaction de documents textuels, LaTeX est supérieur à MS Word et LibreOffice pour plusieurs raisons non exhaustives :
* la gestion d'un grand nombre de pages
* une mise en page consistante et stable
* une protection contre les fautes de goût par design
* la facilité d'écriture d'équations mathématiques


Les éditeurs WYSIWYG sont plébiscités par la plupart des utilisateurs parce qu'il est rare d'écrire des documents longs et complexes. Cependant, ces éditeurs consomment beaucoup de ressources lorsque le nombre de pages évolue. De plus, le placement d'images et autres objets est d'autant plus instable que leur nombre augmente.

Ainsi, LaTeX est un langage qui permet de s'affranchir de ces contraintes. Il ne nécessite d'éditer qu'un document purement textuel, qui sera mis en page par le logiciel d'édition.
Séparer ainsi le fond de la forme permet d'éviter des fautes de mise en page et de rédaction : aller contre LaTeX en imposant une forme particulière demande plus d'efforts.


## Les bases

Un document LaTeX doit contenir des élements essentiels pour être édité. Il n'est bien souvent qu'une suite d'éléments simples qui se rajoutent au texte.

Cette partie se concentre sur le squelette de base d'un domcument LaTeX, son éditions, ainsi que les éléments les plus courants.

### Comment éditer un document LaTeX ?

Un "document" LaTeX désigne le fichier foo.tex qui est rédigé par l'utilisateur. Ce fichier est ensuite fourni à un logiciel d'édition (pdflatex par exemple) qui édite ce document en un fichier PDF, GhostScript, etc...

La distinction entre la rédaction du fichier foo.tex et son édition en fichier PDF vient du rôle classique d'un rédacteur et d'un éditeur : le premier rédige un texte en ajoutant des informations utiles à l'éditeur, qui s'occupe de la mise en page finale.
Installer LaTeX signifie donc se fournir d'un éditeur qui va transformer les fichiers .tex en fichier mis en page (PDF ou GhostScript).

L'édition d'un document .tex peut donc se faire de deux manières différentes :
* avec un éditeur de texte classique (bloc note, gedit, vim, emacs) pour rédiger le document .tex et l'éditeur LaTeX en ligne de commande
* avec un IDE (Integrated Development Environment) qui regroupe ces deux composants

La première solution est conseillée pour des utilisateurs habitués à LaTeX et au terminal. Pour les débutants, il existe des IDE pour Windows (TeXnicCenter) et Linux (TeXstudio). 


### Commencer un nouveau document

Exemple de squelette de document

Signification des éléments :
* document type
* packages
* begin/end{document}

Première compilation/édition


### Les parties

Hiérarchie : partie, chapitre, section, (sub)+section

Table des matières


### Les listes

Listes numérotées ou non

Imbrication

Style de puce par défaut vs modifiable


### Les images

Image classique : positionnement (center, [ht])

Image flottante : positionnement vis-à-vis du texte

Rotations, découpage, etc...


### Les équations

Lien vers table de symboles

Inline vs Outline

Alignement d'équations


## Mise en page

### Marges


### Haut et bas de page


### Couleur

### Styles



## Outils utiles

Présentations brèves

### CTAN

Base de données et recueil de packages

Documentation


### Overleaf/ShareLatex

IDE LaTeX à la mode Google Doc


### Beamer

Faire des slides en LaTeX

Possibilité de transitions, d'animations simples


### Pandoc

Traduction de fichiers LaTeX en Word et divers.


### Moteurs de recherche

La plupart des problèmes ont déjà été vus, voir résolus !

