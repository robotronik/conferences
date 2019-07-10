#"HELLO LED" tutoriel
auteur : Vincent Loibl
loibl.vincent@gmail.com
Révisions par :
***********************************************

#Introduction
Ce tutoriel à pour but de vous inicier à la programmation sur STM32. Il commence en supposant que vous n'y connaissez pas presque rien. Le but est que à la fin vous puissiez avoir assez de connaissance et de pratique pour pouvoir vous débrouiller en toute autonomie. Je considèrerais que vous avez des bases en programmation ( conditions if else, boucle while). Ce n'est pas très grâve de ne pas encore connaître la syntaxe du C car vous comprenderez en lisant les codes d'exemples.
Vous allez apprendre ce qui se passe réellement sur le microcontrôleur, quel sont les principaux périphériques de la stm32, où et comment chercher des informations dans la documentation ... et plus encore.
Ce tutoriel est conçu pour être assez long mais pour être fait en plusieurs fois et pour pouvoir sauter des parties. Ainsi le tutoriel est découpé en plusieurs parties :

[TOC]

**************

#Installation de l'environnement de travail

##Installation Linux

##Installation de la chaîne de compilation & des outils de flash

##Installation des tools Robotronics

##Installation des logiciels de création de code

#Le tout premier code
Le but de ce code est de tester le plus rapidement possible si les installations précédentes se sont bien déroulées. C'est donc le code le plus simple imaginable. 
##Génération du code sous stmcubeMX
La première étape consiste à générer le code de configuration de votre MCU (MicroControler Unit). CubeMx est un logiciel créé pour cet effet par ST microelectronics. Cette étape peut sembler longue la première fois que vous la faite, même si c'est un exemple simple. Je vous promet une fois que vous aurez compris les concepts, cette étape ne durera pas plus de 5 min.
Etapes :
* Lancez le logiciel cubeMX ; selon la façon que cubeMx a été installé, il se lance de manière différente. Si il a été installé depuis le site officiel, vous devrez surement retrouver l'executable du programme dans les fichiers téléchargés. Sur linux, vous devrez surement spécifier à votre OS que le fichier est executable avec la commande "chmod +x nomDuFichier". Sur manjaro/arch linux, si il a été installé avec "yay", c'est la commande "stmcubemx" qui lancera le programme.
* Une fois lancé, le programme lance un GUI :
![stmcubemx_accueil](/image/stmcubemxAcceuil.jpg "Page d'acceuil de cubemx")
Vous pouvez ici ouvrir/créer un projet. Nous allons créer un projet. Cliquez donc sur "Fichier->Create project", ou le raccourci "Ctrl+N".
* Une autre fénêtre s'ouvre. Elle répertorie tous les MCU et carte de prototypage de ST microelectronics. Vous allez donc choisir celle que vous avez. Pour un premier projet vous êtes surement sur une carte de prototypage. Allez donc dans l'onglet "Board Selector" vers le haut de la fenêtre. Cherchez le nom de votre carte dans la liste déroulante, on entrez directement son nom dans la boite de recherche à gauche. Dans mon cas c'est une "NUCLEO-F401RE". 
* Une fois la carte sélectionnée, cliquez sur "Start project".
* Une fenêtre demande si vous souhaitez initialiser les périfériques avec leur mode de défault. C'est généralement le cas, cliquez sur "yes". 
Remarque : Cette initialisation met tout les périfériques dans leur mode inactif sauf l'"usart2" qui vous permettera plus tard de communiquer avec votre ordinateur facilement.
* Ici une nouvelle fenêtre souvre. Elle est composé de plusieurs zones.
![stmcubemx_1fnt](/image/stmcubemx1fnt.jpg "Première fenêtre du project")
1. Une représentation de la puce de votre MCU. Les pins sont représenté et une couleur indiquent leur état. 
    * vert : pin utilisé, la fonction qui utilise le pin peut être affiché en cliquant sur le pin.
    * jaune pâle : pin d'alimentation du MCU.
    * vert caca d'oie : pin spéciaux comme les pins de reset.
    * jaune : je ne sais pas vraiment, mais n'y touchez pas parce que ici c'est un pin qui sert à flasher la carte.
2. Une liste des différents périfériques disponible sur le MCU, organisé en catégories. Ici, vous pouvez voir que l'usart2 est en vert, ce qui signifie qu'il est déja configuré. C'est grâce à la fenêtre "souhaitez vous initializer les périfériques dans leur état par défault" que vous avez rencontré précedement.
3. Vers le haut de la fenêtre vous pouvez trouver des onglets proposant différentes fonction. On se trouve actuellement dans "Pinout & Configuration". Les autres onglets ont des fonctions interessantes mais dans le cadre de ce tuto, on ne s'interressera que à l'onglet "Project Manager". Cet onglet permettra de configurer le projet et entre autre, le répertoire de génération du projet.

* Pour l'instant, cliquez sur pin PA5, qui devrait être déja affiché en vert. Vous pouvez ainsi voir que le pin est déja initialisé en "GPIO_Output". Un GPIO est l'acronyme de "General Purpose Input/Output" : Entrée/Sortie à but général. Les GPIO sont des périphériques qui permettent de contrôler ou de mesurer la tension de sortie de certain pins du MCU. Ce périphérique ne comprends que les signaux logique. Vous pouvez donc que mesurer ou contrôler des volages "0" ou "1" ce qui correspond pour les stm32 à des voltages respectivement 0V ou 3.3V. 
Si vous ne savez pas encore ce qu'est un périphérique, jetez un coup d'oeil au cours "Les périphériques" mais ce n'est pas indispansable au suivi de ce tutoriel.
* Le pin "PA5" est particulier dans le sens que sur la carte NUCLEO-F401RE, il est connecté à une led sur la carte. Ainsi en contrôlant le pin, vous contrôlerez la led. Je vous invite à faire un clic droit sur ce pin puis de cliquer dans le menu contextuel sur "Enter User Label". Entrez ensuite le nom "LED" et appuyez "Entré". Vous venez de donner un nom que vous pourez utiliser par la suite dans votre code.
* Je vous invite par la suite à cliquer sur "System view" juste à coté de "pinout view" au dessus de l'image du MCU.
* Vous pouvez voir ici, les différents périphériques actuellement initialisés : DMA, GPIO, NVIC, RCC et UART2. Vous allez cliquer sur "GPIO" soit dans "System view", soit dans la partie gauche de l'interface sous la catégorie "System Core".
![stmcubemx_configGPIO](/image/stmcubemxConfigGPIO.jpg "Interface de configuration des GPIO")
* Dans la nouvelle interface "configuration" qui vient de s'ouvrir, vous retrouvez une liste de tout les GPIO configuré actuellemnent. Vous retrouvez notamment le pin "PA5" à qui vous avez donné le "user label" "LED". Cette interface donne aussi les paramètres d'initialisation des GPIO, comme : GPIO_Output_level, GPIO_mode, GPIO_Pullup/Pulldown, Maximum_output_speed, user_label <...> . Cliquez sur le pin "PA5". 
![stmcubemx_configGPIO](/image/stmcubemxConfigGPIO2.jpg "Interface de configuration des GPIO")
* Une autre interface s'ouvre vers le bas. Vous pouvez ici choisir les paramètres d'initialisation de votre Pin. Pour notre tutoriel nous allons configurer "GPIO_Output_Level" à "High". Ainsi quand vous allez flasher votre carte, vous allez voir la led s'allumer.
![stmcubemx_configGPIO](/image/stmcubemxConfigGPIO3.jpg "Interface de configuration du pin PA5 à High")
* On va enfin pouvoir générer notre code. Pour cela il faut spécifier à cubemx les paramètres de génération du code. Vous devez entrer le nom de votre projet, son répertoire et "Makefile" dans le champ "toolchain/ide". Cubemx va générer le projet dans le répertoire "Project Location/Project Name". Sur linux on va préférer utiliser la toolchain Makefile pour une plus grande liberté de configuration et de personnalisation (plus d'explication dans le tuto "makefile pour stm32"). Vos rééglages devrez ressembler à la capture d'écran suivante.
![stmcubemx_configgene](/image/stmcubemxConfigGene.jpg "Configuration de la génération du code")
* Cliquer sur l'onglet "Code générator" sur la gauche de l'interface. Vous avez ici d'autres paramètres de configuration. Je vous conseille d'utiliser les paramètres suivants :
![stmcubemx_configgene](/image/stmcubemxConfigGene2.jpg "Configuration de la génération du code bis")
* On a fini la configuration de cubemx, vous pouvez cliquer sur le gros bouton "GENERATE CODE". Après plusieurs fenêtres de dialogue usuelles, on vous propose d'ouvrir le répertoire du projet.
* Rendez vous dans le répertoire du projet.

##Inspection du code généré

Le répertoire ou le code a été généré devrait resembler à ceci.

bigtuto1
├── bigtuto1.ioc
├── Drivers
│   ├── CMSIS
│   └── STM32F4xx_HAL_Driver
├── Inc
│   ├── gpio.h
│   ├── main.h
│   ├── stm32f4xx_hal_conf.h
│   ├── stm32f4xx_it.h
│   └── usart.h
├── Makefile
├── Src
│   ├── gpio.c
│   ├── main.c
│   ├── stm32f4xx_hal_msp.c
│   ├── stm32f4xx_it.c
│   ├── system_stm32f4xx.c
│   └── usart.c
├── startup_stm32f401xe.s
└── STM32F401RETx_FLASH.ld

Vous trouvez plusieurs fichiers interresant ici. En voici une simple description :

bigtuto1 (répertoire du projet)
├── bigtuto1.ioc (fichier de sauvegarde des configuration. C'est le fichier qui est lu par cubemx lorsque on veut regénérer du code)
├── Drivers (répertoire qui contient les différentes librairies utiles comme notament la HAL, plus de précision plus tard)
│   ├── CMSIS
│   └── STM32F4xx_HAL_Driver
├── Inc (répertoire contenant les fichiers .h avec les définitions des fonctions de leur fichier .c associé)
│   ├── gpio.h
│   ├── main.h
│   ├── stm32f4xx_hal_conf.h
│   ├── stm32f4xx_it.h
│   └── usart.h
├── Makefile (script d'automatisation de la compilation avec le programme make)
├── Src (répertoires des fichiers .c)
│   ├── gpio.c (gère la configuration des GPIO)
│   ├── main.c (est le point d'entré du programme aka. contient la toute première ligne de code executé par le MCU)
│   ├── stm32f4xx_hal_msp.c 
│   ├── stm32f4xx_it.c (gère la configuration des interruptions matérielles)
│   ├── system_stm32f4xx.c
│   └── usart.c (gère l'initialisation du périphérique usart)
├── startup_stm32f401xe.s
└── STM32F401RETx_FLASH.ld

On ne va pas trop s'attarder sur ce code, mais il peut être intérressant de voir que dans le fichier "main.h" dans le répertoire "Inc/" à la ligne 67-68, on retrouve une preuve que notre code à été généré normalement car notre label est présent. On se rends compte que derrière le rideau, notre label "LED" est bien traduit en pin "A5" (PA5).
```C
#define LED_Pin GPIO_PIN_5

#define LED_GPIO_Port GPIOA
```

Pour les curieux, le code qui configure le pin "PA5" se trouve dans "gpio.c" à la ligne 55.

##Mise en place des scripts de compilations & flash
Dans l'association Robotronik, on a mis en place des scripts qui vous simpliera la vie sur linux. Je vous conseille donc de copier à coté du répertoire de votre projet (ici bituto1) les scripts robotronik accécibles à l'adresse suivante `<inserer fuking lien git>`.
Votre répertoire devrait ressembler au mien :

.
├── bigtuto1
│   ├── bigtuto1.ioc
│   ├── Drivers
│   │   ├── CMSIS
│   │   └── STM32F4xx_HAL_Driver
│   ├── Inc
│   │   ├── gpio.h
│   │   ├── main.h
│   │   ├── stm32f4xx_hal_conf.h
│   │   ├── stm32f4xx_it.h
│   │   └── usart.h
│   ├── Makefile
│   ├── Src
│   │   ├── gpio.c
│   │   ├── main.c
│   │   ├── stm32f4xx_hal_msp.c
│   │   ├── stm32f4xx_it.c
│   │   ├── system_stm32f4xx.c
│   │   └── usart.c
│   ├── startup_stm32f401xe.s
│   └── STM32F401RETx_FLASH.ld
├── Makefile
└── robotronikScripts

Le premier **Makefile** (pas celui se trouvant dans bigtuto1), a été écrit par robotronik et donne manière simple de compiler les projets. Pour cela il faut lui spécifier sur quel projet on travaille. Il faut juste modifier quelques lignes dans le Makefile:
```Makefile
BOARD=f4
PROJECT_DIR=bigtuto1
PROJECT_NAME=bigtuto1
```
Ces lignes définissent des variables qui sont utilisé danss le script make. 
* La première variable **"BOARD"**, désigne la série de carte (f0,f3,f4,h7 ...), dans mon cas j'ai un STM32**F4**01RE. Je mets donc : BOARD=f4.
* La deuxième variable **PROJECT_DIR**, désigne le nom du répertoire, dans notre cas c'est bigtuto1.
* La troizième variable **PROJECT_NAME**, désigne le nom du fichier .ioc à l'intérieur du répertoire "PROJECT_DIR". Dans mon cas c'est **bigtuto1**. Dans la plupart des cas, PROJECT_DIR et PROJECT_NAME dont égaux.

Ensuite avec un terminal, trouvez vous dans le répertoire ".", c'est-à-dire le répertoire contenant bigtuto1 et robotronikScripts, et lancez la commande "make c". Si tout se passe bien vous verrez le message suivant :

![reussiteCompilation](/image/reussiteCompilation.jpg "Message de réussite de la compilation")

Sinon rendez vous dans la section "Résolution de problèmes" ou sur votre moteur de recherche préféré.

Maintenant, vérifiez que vous avez bien connecté votre carte de prototypage sur un port usb de votre ordinateur. Si vous avez installé st-flash lancez la commande "make sf" sinon vous utilisez openocd et lancez la commande "make f".
Si tout se passe bien, vous devriez voir le message suivant :

![reussiteFlash](/image/reussiteFlash.jpg "Message de réussite du flash")

Sinon rendez vous dans la section "Résolution de problèmes" ou sur votre moteur de recherche préféré.

Normalement si l'opération a réussie, la led verte sur votre stm devrait être allumée.

![reussiteFlash2](/image/reussiteFlash2.jpg "Résultat du code")

Bravo ! Vous avez fait votre premier code sur STM32 avec la pipeline robotronik !!! Bon c'est le code le plus simple que j'ai pu imaginer mais c'est surtout le début d'une grande aventure. Dans la suite de ce tuto, vous allez apprendre comment contrôller cette led de manière simple, puis d'une autre méthode plus compliqué. Ainsi si vous savez contrôller une led vous savez déja faire une grande partie des choses demandées en robotique. Ce qui vous manquera, c'est comment comuniquer avec des composant électroniques. Finalement vous n'aurez plus qu'à explorer les différents types de périphériques et vous atteindrez le status de divinité de l'électronique (enfin il y a encore du boulot ;) ).

#Tutoriel contrôler les GPIO
Bon, vous allez me dire que c'est chiant ce qu'on a fait, on a même pas encore codé. Ne vous inquiètez pas. Maintenant que l'on sait que votre environnement de travail est bien configuré, on va pouvoir commencer à coder. Dans l'exemple précédent ce qui est chiant, c'est le manque d'action. Dans cette partie du tutoriel on va faire clignoter la led. woaw.
Comme ce tutoriel est bien structuré, vous n'avez pas à configurer et à générer votre code de configuration avec cubemx. Nous allons utiliser le projet du tutoriel précédent et aller directement dans le code. 

Pour rappel le répertoire du projet devrait ressembler à celà :
.
├── bigtuto1
│   ├── bigtuto1.ioc
│   ├── Drivers
│   │   ├── CMSIS
│   │   └── STM32F4xx_HAL_Driver
│   ├── Inc
│   │   ├── gpio.h
│   │   ├── main.h
│   │   ├── stm32f4xx_hal_conf.h
│   │   ├── stm32f4xx_it.h
│   │   └── usart.h
│   ├── Makefile
│   ├── Src
│   │   ├── gpio.c
│   │   ├── main.c
│   │   ├── stm32f4xx_hal_msp.c
│   │   ├── stm32f4xx_it.c
│   │   ├── system_stm32f4xx.c
│   │   └── usart.c
│   ├── startup_stm32f401xe.s
│   └── STM32F401RETx_FLASH.ld
├── Makefile
└── robotronikScripts

#Tutoriel contrôler les GPIO (avec classe)

#Tutoriel apprendre à compter (les timers)
#Tutoriels communiquer
##Tutoriel UART
##Tutoriel SPI
##Tutoriel I2C
##Les autres protocoles de communication

#Le DMA
##Les secteurs mémoires de la stm32

#Le watchdog

#Middlewares
##FreeRTOS
##Autres