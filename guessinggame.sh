#!/bin/bash
# guessinggame.sh : devinez le nombre de fichiers du répertoire actuel

# Fonction qui renvoie le nombre de fichiers du répertoire actuel
function count_files {
    ls -1 | wc -l
}

# Fonction qui lit et valide la réponse de l'utilisateur
function ask_guess {
    local answer
    read -r answer
    # On redemande tant que la saisie n'est pas un entier positif
    while ! [[ "$answer" =~ ^[0-9]+$ ]]; do
        echo "Veuillez entrer un nombre entier :" >&2
        read -r answer
    done
    echo "$answer"
}

nb_files=$(count_files)
guess=-1

echo "Bienvenue dans le jeu de devinettes !"
echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"

while [[ $guess -ne $nb_files ]]
do
    guess=$(ask_guess)
    if [[ $guess -lt $nb_files ]]
    then
        echo "Trop bas ! Essayez encore :"
    elif [[ $guess -gt $nb_files ]]
    then
        echo "Trop haut ! Essayez encore :"
    else
        echo "Félicitations ! Il y a bien $nb_files fichiers dans ce répertoire."
    fi
done
