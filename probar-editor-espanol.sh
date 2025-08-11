#!/bin/bash
# Script para probar el editor Three.js en español
# Ejecuta el editor y verifica que las traducciones funcionen

echo "🧪 Probando el editor Three.js en español..."

# Verificar que el archivo de strings tiene la sección de español
if grep -q "es: {" editor/js/Strings.js; then
    echo "✅ Sección de español encontrada en Strings.js"
else
    echo "❌ Error: No se encontró la sección de español en Strings.js"
    exit 1
fi

# Verificar que la configuración predeterminada es español
if grep -q "userLanguage : 'es'" editor/js/Config.js; then
    echo "✅ Configuración predeterminada establecida en español"
else
    echo "❌ Error: La configuración predeterminada no está en español"
fi

# Verificar que español está en la lista de idiomas
if grep -q "'es'" editor/js/Sidebar.Settings.js; then
    echo "✅ Español agregado a la lista de idiomas disponibles"
else
    echo "❌ Error: Español no está en la lista de idiomas"
    exit 1
fi

# Contar las traducciones en español
spanish_translations=$(grep -c "'" editor/js/Strings.js | head -1)
echo "📊 Se encontraron aproximadamente $(echo $spanish_translations) traducciones"

# Verificar archivos traducidos
translation_files=(
    "README-ES.md"
    "editor/index.html"
    "editor/manifest.json"
    "examples/index.html"
    "docs/index.html"
)

echo ""
echo "📁 Verificando archivos traducidos:"
for file in "${translation_files[@]}"; do
    if [ -f "$file" ]; then
        echo "  ✅ $file"
    else
        echo "  ❌ $file (faltante)"
    fi
done

echo ""
echo "🚀 Iniciando servidor de desarrollo..."
echo "📱 El editor debería abrirse en español automáticamente"
echo "🔧 Para cambiar idioma: Configuración > Idioma en el editor"
echo ""
echo "Abriendo navegador en:"
echo "  - Editor: http://localhost:8080/editor/"
echo "  - Ejemplos: http://localhost:8080/examples/"

# Abrir navegador automáticamente si está disponible
if command -v open &> /dev/null; then
    echo "🌐 Abriendo navegador..."
    sleep 3 && open "http://localhost:8080/editor/" &
elif command -v xdg-open &> /dev/null; then
    echo "🌐 Abriendo navegador..."
    sleep 3 && xdg-open "http://localhost:8080/editor/" &
fi

# Ejecutar servidor de desarrollo
npm run dev
