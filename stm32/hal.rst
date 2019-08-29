----

C'est bien gentil mais on programme quand un stm32 ?
====================================================

* Quand vous aurez programmé sur un PC déjà
* Quand vous saurez utiliser un Makefile et git
* Après ce chapitre

----

Une architecture différente
===========================

Un jeu d'instructions particulier
---------------------------------

Pas la même architecture système, pas le même language matériel : il faut un compilateur spécifique : :code:`arm-none-eabi-gcc`


.. code:: makefile

    CFlags += \
      -mcpu=cortex-m4 \
      -mthumb \
      -mfloat-abi=hard \
      -mfpu=fpv4-sp-d16 \
      -specs=nano.specs

À quoi ça correspond ?

:code:`-mcpu=cortex-m4`
    on spécifie à GCC quelle version de Arm. De même que les processeur Intel ou AMD, on a plusieurs générations (Ryzen est différent de Bulldozer)

:code:`-mthumb`
    Optimisation du Cortex (instructions compressées)

:code:`-mfloat-abi=hard` :
    On a une unité de calculs flottants

:code:`-mfpu=fpv4-sp-d16`
    on spécifie comment appeler cette unité

:code:`-specs=nano.specs`
    On spécifie les appels système à GCC : un stm32 ne tourne pas sous linux, :code:`printf` n'existe pas.


----

Un makefile minimal
===================

.. code:: makefile

    OPENOCD_CFG = /usr/share/openocd/scripts/board/st_nucleo_f3.cfg

    Objects = main.c.o led.c.o

    executable.elf: $(Objects)

    %.c.o: %.c Makefile
        @$(CC) $(CFlags) $< -o $@ -c
        @echo CC $<

    %.elf:
        @$(CC) $(CFlags) $^ $(LFlags) -o $@
        @echo LINK $@

    %.hex: %.elf
        @arm-none-eabi-objcopy -Oihex $^ $@
        @echo OBJCOPY $@

    %.flash: %.hex
    	openocd -f $(OPENOCD_CFG) \
    		-c "init" \
    		-c "reset init" \
    		-c "flash write_image erase $^" \
    		-c "reset" \
    		-c "shutdown"
