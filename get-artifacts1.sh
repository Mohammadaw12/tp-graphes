#!/bin/bash

tok=$(cat ~/token.gh)

# Première requête : récupérer la liste des artefacts
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/OWNER/tp-graphes/actions/artifacts \
  > gh-artifacts.json

# Deuxième requête : télécharger l'artefact
curl -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/Mohammadaw12/tp-graphes/actions/artifacts/12343501663/zip \
  --output artifact.zip

# Extraire l'archive
unzip -o artifact.zip
