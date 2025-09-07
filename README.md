# 🚀 Mac Setup Script

Este repositorio contiene un **script modular de setup para macOS**.  
Permite instalar aplicaciones, herramientas de desarrollo, configurar la terminal y ajustar tu sistema de forma rápida.

---

## 📦 Requisitos

- macOS (Intel o Apple Silicon)
- Conexión a internet
- `bash` o `zsh` instalado (por defecto en macOS ya viene)

---

## ▶️ Uso

1. Clona el repositorio o descarga el script:
```bash
git clone https://github.com/tuusuario/mac-setup.git
cd mac-setup
```
2. Da permisos de ejecución al script:
```bash
chmod +x setup.sh
```
3. Ejecuta el script con las opciones que necesites:
```bash
./setup.sh --apps         # Instala aplicaciones gráficas
./setup.sh --dev          # Instala herramientas de desarrollo (Git, NVM, Node)
./setup.sh --terminal     # Configura iTerm2 + Oh My Zsh + plugins
./setup.sh --productivity # Instala herramientas de productividad
./setup.sh --system       # Ajustes útiles del sistema
./setup.sh --all          # Ejecuta todo el setup
```
---

## Estructura
```bash
mac-setup/
├── README.md
├── setup.sh
├── scripts/
│   ├── apps.sh
│   ├── dev.sh
│   ├── terminal.sh
│   ├── productivity.sh
│   └── system.sh
└── docs/
```
---

## ⚡ Qué instala cada módulo

**Apps (`--apps`)**  
Instala aplicaciones gráficas esenciales: 
- iTerm2
- Slack
- Microsoft Teams
- Google Chrome
- Firefox
- 1Password
- WebStorm
- Visual Studio Code
- Docker Desktop.

**Herramientas de desarrollo (`--dev`)**  
Incluye:
- Git
- NVM (Node Version Manager)
- Última versión LTS de Node.jsGit

**Terminal (`--terminal`)**  
Configura Oh My Zsh junto con plugins de autocompletado y resaltado de sintaxis, además del tema powerlevel10k para una terminal más visual y funcional.

Añadir en tu ~/.zshrc:
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

**Productividad (`--productivity`)**  
Instala herramientas para mejorar la productividad:
- Rectangle → gestión de ventanas
- Raycast → lanzador/productividad
- Fuente: Fira Code Nerd Font

**Sistema (`--system`)**  
Aplica ajustes útiles en macOS:
- Mostrar archivos ocultos en Finder
- Mostrar la ruta completa en Finder
- Guardar capturas de pantalla en ~/Screenshots

---

## 🛠️ Extensiones recomendadas de Visual Studio Code

El script puede instalar automáticamente extensiones útiles para Visual Studio Code, incluyendo:

- Prettier (formateo de código)  
- ESLint (linting de JavaScript/TypeScript)  
- GitLens (integración avanzada con Git)  
- Docker  
- Soporte para Python y Jupyter  
- Integración con GitHub PR & Issues

---

## 🔁 Post-instalación

- Reinicia la terminal o recarga la configuración del shell para aplicar todos los cambios.  
- Abre Visual Studio Code y asegúrate de que el comando `code` esté disponible en el PATH para instalar extensiones y abrir proyectos desde la terminal.


## 🎉 Resultado

Con este script tendrás un **entorno de desarrollo completo y funcional** en tu Mac en pocos minutos, listo para programar y ser productivo desde el primer momento.

---
