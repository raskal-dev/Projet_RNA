@echo off

set "venv_name=venv"


if exist "%venv_name%\Scripts\activate.bat" (
  echo L'environnement virtuel "%venv_name%" existe déjà.
  call "%venv_name%\Scripts\activate.bat"

  if exist "requirement.txt" (
    pip install -r requirement.txt
    echo Dépendances installées avec succès.
  ) else (
    echo Le fichier requirement.txt n'existe pas dans ce répertoire.
  )

) else (
  echo Création de l'environnement virtuel "%venv_name%"...

  python -m venv "%venv_name%"
  call "%venv_name%\Scripts\activate.bat"

  if exist "requirement.txt" (
    pip install -r requirement.txt
    echo Dépendances installées avec succès.
  ) else (
    echo Le fichier requirement.txt n'existe pas dans ce répertoire.
  )

  :: Désactiver l'environnement virtuel
  deactivate

  echo Environnement virtuel "%venv_name%" créé et dépendances installées.
)

cd ..
python run.py