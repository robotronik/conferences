----

Make, don des dieux
========================

Un :code:`Makefile` classique:

.. code:: makefile

    FILES_SRC = \
        main.c \
        give_result.c \
        robotronik_is_life.c

    FILES_HEADER = \
        give_result.h \
        robotronik.h

    FILES_OBJ = $(FILES_SRC:.c=.o)



    result: executable
        executable --give-me-result

    executable: $(FILES_OBJ)
        link_those_files $^ --output=$@

    %.o: %.c $(FILES_HEADER)
        compile_dat_file $< -o $@


----

La syntaxe d'un Makefile
========================

.. code:: makefile

    # Les lignes commençant par # sont ignorées.
    # On peut déclarer et utiliser des variables:
    Ma_Variable = tomate
    Ma_Liste = pomme poire abricot $(Ma_Variable)

    # Une *règle* est décrite par la cible, les dépendances et la recette

    cible: file1.c file2.c
        # La recette est un script bash sur plusieurs lignes. On y écrit ce qu'on veut.
        echo Ma liste contient $(Ma_Liste).
        gcc $^ -o $@
        @echo Fichier compilé !

    # Une cible n'est pas forcément un fichier : ça peut être une "commande"
    run: cible
        ./cible --run


L'utilisation d'un Makefile
===========================

On utilise un Makefile à l'aide de la commande :code:`make`.

.. code:: bash

    $ make run
    # La recette est un script bash sur plusieurs lignes. On y écrit ce qu'on veut.
    echo Ma liste contient pomme poire abricot tomate.
    Ma liste contient pomme poire abricot tomate.
    gcc file1.c file2.c -o cible
    Fichier compilé !
    ./cible --run
    Hello world !

    $ make cible
    make: « cible » est à jour.


* Make affiche les lignes de code avant de les exécuter. Ceci peut être empêché en rajoutant un '@' au début de la ligne.

* Make fait le strict minimum : pas besoin de recompiler un fichier si les sources ne changent pas.

----

C'est compliqué…
================

* La syntaxe est simple

* Vous en apprendrez plus au fil du temps. Il faut juste que vous sachiez lire et utiliser un Makefile.

* Vous verrez des Makefile partout

* Ça simplifie le boulot. :code:`make flash` et tout est automatique !

----

On peut utiliser un makefile pour tout !
========================================


.. code:: makefile

    default: view

    FILE = presentation.rst

    serve:
    	hovercraft $(FILE) -s

    view: serve
    	firefox http://localhost:8000

    install:
    	yay -S hovercraft-git
