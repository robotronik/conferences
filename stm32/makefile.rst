----

Make, don des dieux
========================

Un makefile classique:

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
