#!/bin/bash

venv_name="venv"

if [ -d "$venv_name" ]; then
  echo "L'environnement virtuel '$venv_name' existe déjà."
  source "$venv_name/bin/activate"

  if [ -f requirement.txt ]; then
    pip install -r requirement.txt
    echo "Dépendances installées avec succès."
  else
    echo "Le fichier requirement.txt n'existe pas dans ce répertoire."
  fi

else
  echo "Création de l'environnement virtuel '$venv_name'..."

  python3 -m venv "$venv_name"

  source "$venv_name/bin/activate"

  if [ -f requirement.txt ]; then
    pip install -r requirement.txt
    echo "Dépendances installées avec succès."
  else
    echo "Le fichier requirement.txt n'existe pas dans ce répertoire."
  fi

  deactivate

  echo "Environnement virtuel '$venv_name' créé et dépendances installées."
fi

cd ..

python3 run.py
