#!/bin/bash

# ===============================
# Script para configurar SSH con GitLab en Mac
# ===============================

EMAIL=${1:-"tu_email@ejemplo.com"}
KEY_PATH="$HOME/.ssh/id_ed25519"

echo "🔑 Configurando clave SSH para GitLab con el email: $EMAIL"

# 1. Verificar si ya existe la clave
if [ -f "$KEY_PATH.pub" ]; then
  echo "✅ Ya tienes una clave en $KEY_PATH.pub"
else
  echo "⚙️ Generando nueva clave SSH..."
  ssh-keygen -t ed25519 -C "$EMAIL" -f "$KEY_PATH" -N ""
fi

# 2. Iniciar el agente SSH
echo "🚀 Iniciando ssh-agent..."
eval "$(ssh-agent -s)"

# 3. Añadir la clave al agente
echo "📌 Añadiendo clave al ssh-agent..."
ssh-add "$KEY_PATH"

# 4. Copiar la clave pública al portapapeles
echo "📋 Copiando la clave pública al portapapeles..."
pbcopy < "$KEY_PATH.pub"

echo ""
echo "======================================="
echo "✅ Tu clave pública se copió al portapapeles."
echo "Ahora ve a GitLab → Profile → SSH Keys y pégala."
echo "URL rápida: https://gitlab.com/-/profile/keys"
echo "======================================="
echo ""

# 5. Probar conexión con GitLab
read -p "👉 ¿Quieres probar la conexión con GitLab ahora? (s/n): " confirm
if [[ $confirm == "s" || $confirm == "S" ]]; then
  ssh -T git@gitlab.com
fi
