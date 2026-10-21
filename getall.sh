#!/bin/bash

tok=$(cat ~/token.gh)
OWNER="Moammadaw12"
REPO="tp-graphes"

while IFS= read -r id
do
    echo "Téléchargement de l'artefact $id"

    curl -L \
      -H "Accept: application/vnd.github+json" \
      -H "Authorization: Bearer $tok" \
      -H "X-GitHub-Api-Version: 2022-11-28" \
      "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts/$id/zip" \
      --output "artifact-$id.zip"

    mkdir -p "artifact-$id"
    unzip -o "artifact-$id.zip" -d "artifact-$id"

done < liste-id.txt
