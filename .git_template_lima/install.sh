#!/bin/bash

TEMPLATE_DIR="$HOME/.git_template_lima"

echo "Iniciando a instalação dos Git Hooks globais..."

# criar a pasta de hooks dentro do template, se não existir
mkdir -p "$TEMPLATE_DIR/hooks"

# copiar os arquivos do repositório para a pasta de template
cp hooks/pre-commit "$TEMPLATE_DIR/hooks/"
cp hooks/commit-msg "$TEMPLATE_DIR/hooks/"
cp hooks/pre-push "$TEMPLATE_DIR/hooks/"

#  scripts sendo executados
chmod +x "$TEMPLATE_DIR/hooks/pre-commit"
chmod +x "$TEMPLATE_DIR/hooks/commit-msg"
chmod +x "$TEMPLATE_DIR/hooks/pre-push"

echo "Permissões aplicadas com sucesso."

#  configurar o git para usar este diretório como template global
git config --global init.templateDir "$TEMPLATE_DIR"

echo "Seu git está configurado para usar o '$TEMPLATE_DIR' como template global."
echo "------------------------------------------------------------"
echo "Instalação concluída!"