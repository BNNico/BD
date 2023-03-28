#!/bin/bash

# Vide le comtenu de compte.txt (on pipe 'rien' dans le fichier)
> compte.txt

# Boucle pour parcourir tous les dossiers du répertoire courant
for directory in */; do
    # Compte le nombre de fichiers dans le dossier courant et l'affiche
    num_files=$(ls -1 $directory | wc -l)
    # pipe pour append la phrase au fichier compte.txt (>>)
    echo "Le dossier $directory contient $num_files images." >> compte.txt
done
