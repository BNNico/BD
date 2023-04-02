# Création des répertoires Entrainement, Test et Validation
mkdir -p {Entrainement,Test,Validation}

# Création des sous-répertoires pour chaque compétition et chaque ensemble
for comp in CDM_2014 CDM_2018 CDM_2022 EURO_2016 EURO_2020; do
  mkdir -p Entrainement/$comp Test/$comp Validation/$comp
done

# Copie des fichiers JPG dans les sous-répertoires correspondants
for comp in CDM_2014 CDM_2018 CDM_2022 EURO_2016 EURO_2020; do
  cp $comp/*.jpg Entrainement/$comp Test/$comp
done
