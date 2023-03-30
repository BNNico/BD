#!/bin/bash

# Boucle pour parcourir tous les dossiers du répertoire courant
total_files=0
for directory in */; do
    # Compte le nombre de fichiers dans le dossier courant et l'affiche
    # CDM_2022
    num_files=$(ls -1 $directory/CDM_2022 | wc -l)
    echo "Le dossier $directory/CDM_2022 contient $num_files images."
    total_files=$(($total_files+$num_files))
    # CDM_2018
    num_files=$(ls -1 $directory/CDM_2018 | wc -l)
    echo "Le dossier $directory/CDM_2018 contient $num_files images."
    total_files=$(($total_files+$num_files))
    # CDM_2014
    num_files=$(ls -1 $directory/CDM_2014 | wc -l)
    echo "Le dossier $directory/CDM_2014 contient $num_files images."
    total_files=$(($total_files+$num_files))
    # EURO_2016 
    num_files=$(ls -1 $directory/EURO_2016 | wc -l)
    echo "Le dossier $directory/EURO_2016 contient $num_files images."
    total_files=$(($total_files+$num_files))
    # EURO_2020
    num_files=$(ls -1 $directory/EURO_2020 | wc -l)
    echo "Le dossier $directory/EURO_2020 contient $num_files images."
    total_files=$(($total_files+$num_files))
done
echo "En tout : $total_files images."
