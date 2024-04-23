#!/bin/bash

# Solicita os valores do usuário
echo "Digite o título do post:"
read title
echo "Digite o nome da tag:"
read tag
echo "Digite o nome do arquivo de imagem:"
read image

# Formata a data atual no formato YYYY-MM-DD
date=$(date +"%Y-%m-%d")

# Substitui espaços no título por hifens para criar o nome do arquivo
filename=$(echo "$title" | tr ' ' '-')

# Cria o permalink
permalink="/posts/$tag/$filename"

# Cria o nome do arquivo markdown com a data e o título
markdown_file="$date-$filename.markdown"

# Cria o arquivo markdown com o conteúdo fornecido
cat << EOF > $markdown_file
---
layout: post
title:  "$title"
permalink: $permalink
date:   $date
image:  $image
tags:   $tag
---
EOF

echo "Arquivo '$markdown_file' criado com sucesso!"
