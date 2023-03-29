#!/bin/bash

# Boucle pour parcourir tous les dossiers du répertoire courant
for directory in */; do
    # Compte le nombre de fichiers dans le dossier courant et l'affiche
    num_files=$(ls -1 $directory/Entrainement | wc -l)
    echo "Le dossier $directory/Entrainement contient $num_files images."
    num_files=$(ls -1 $directory/Test | wc -l)
    echo "Le dossier $directory/Test contient $num_files images."
done
