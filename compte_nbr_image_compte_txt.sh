#!/bin/bash

# Vide le comtenu de compte.txt (on pipe 'rien' dans le fichier)
> compte.txt

# Boucle pour parcourir tous les dossiers du répertoire courant
for directory in */; do
    # Compte le nombre de fichiers dans le dossier courant et l'affiche
    # pipe pour append la phrase au fichier compte.txt (>>)
    num_files=$(ls -1 $directory/Entrainement | wc -l)
    echo "Le dossier $directory/Entrainement contient $num_files images." >> compte.txt
    num_files=$(ls -1 $directory/Test | wc -l)
    echo "Le dossier $directory/Test contient $num_files images." >> compte.txt
done 
