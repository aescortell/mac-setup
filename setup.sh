#!/bin/bash

# Carga módulos si existen en scripts/
SCRIPTS_DIR="$(dirname "$0")/scripts"

# ---------------------------
# Funciones
# ---------------------------
install_homebrew() {
  if ! command -v brew &> /dev/null; then
      echo "🍺 Instalando Homebrew..."
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
      echo "✅ Homebrew ya está instalado"
  fi
  brew update
}

install_apps() { bash "$SCRIPTS_DIR/apps.sh"; }
install_dev() { bash "$SCRIPTS_DIR/dev.sh"; }
install_terminal() { bash "$SCRIPTS_DIR/terminal.sh"; }
install_productivity() { bash "$SCRIPTS_DIR/productivity.sh"; }
configure_system() { bash "$SCRIPTS_DIR/system.sh"; }
configure_gitlab() { bash "$SCRIPTS_DIR/gitlab.sh"; }

# ---------------------------
# Main
# ---------------------------
if [ $# -eq 0 ]; then
  echo "Uso: $0 [--apps | --dev | --terminal | --productivity | --system | --gitlab | --all]"
  exit 1
fi

install_homebrew

for arg in "$@"; do
  case $arg in
    --apps) install_apps ;;
    --dev) install_dev ;;
    --terminal) install_terminal ;;
    --productivity) install_productivity ;;
    --system) configure_system ;;
    --gitlab) configure_gitlab;;
    --all) 
      install_apps
      install_dev
      install_terminal
      install_productivity
      configure_system
      configure_gitlab
      ;;
    *) echo "❌ Opción no reconocida: $arg" ;;
  esac
done

echo "🎉 Setup finalizado"
