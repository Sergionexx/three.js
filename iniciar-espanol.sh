#!/bin/bash
# Script para ejecutar Three.js en español
# Configura el entorno en español y ejecuta el proyecto

echo "🚀 Iniciando Three.js en español..."
echo "📝 Configurando idioma predeterminado: español"

# Verificar que estamos en el directorio correcto
if [ ! -f "package.json" ]; then
    echo "❌ Error: No se encuentra package.json. Ejecuta este script desde la raíz del proyecto Three.js"
    exit 1
fi

# Instalar dependencias si no existen
if [ ! -d "node_modules" ]; then
    echo "📦 Instalando dependencias..."
    npm install
fi

# Ejecutar el proyecto
echo "🌐 Iniciando servidor de desarrollo..."
echo "💡 El editor se abrirá en español automáticamente"
echo "⚙️  Puedes cambiar el idioma desde Configuración > Idioma en el editor"
echo ""
echo "🔗 URLs disponibles:"
echo "   Editor: http://localhost:8080/editor/"
echo "   Ejemplos: http://localhost:8080/examples/"
echo "   Documentación: http://localhost:8080/docs/"
echo ""

npm run dev
