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

----

La syntaxe d'un Makefile
========================

.. code:: makefile

    cible: dépendance1 dépendance2
        recette
        @recette muette
        @echo la première dépendance est $<
        compile --output=$@ --dependencies=$^


* Des variables magiques :

    :code:`$@` :
        la cible
    :code:`$<` :
        la première dépendance
    :code:`$^` :
        toutes les dépendances

* On peut rendre une règle muette en rajoutant un :code:`@` au début de la ligne.

----

La syntaxe d'un Makefile
========================


.. code:: makefile

  %.o: %.c
      compile_dat_file $< -o $@

On peut écrire des règles "génériques".

Ici, si on a besoin d'un fichier qui termine par :code:`.o` Make sait qu'il faudra compiler le fichier :code:`.c` correspondant.

Par exemple si une autre règle est :

.. code:: makefile

  sudoku: sudoku.o auto_solver.o
      link_those_files $< -o $@

Make saura alors qu'il faut compiler :code:`sudoku.c` et :code:`auto_solver.c`.




----

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

Make fait le strict minimum : pas besoin de recompiler un fichier si les sources ne changent pas.

.. code:: bash

    $ make cible
    make: « cible » est à jour.



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
