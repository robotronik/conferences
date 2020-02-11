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
# .PHONY: run
run: cible
	./cible --run


clean:
	rm cible
