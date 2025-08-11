# three.js

[![NPM Package][npm]][npm-url]
[![Build Size][build-size]][build-size-url]
[![NPM Downloads][npm-downloads]][npmtrends-url]
[![DeepScan][deepscan]][deepscan-url]
[![Discord][discord]][discord-url]

#### Biblioteca JavaScript 3D

El objetivo del proyecto es crear una biblioteca 3D multiplataforma, ligera, fácil de usar y de propósito general. Las versiones actuales solo incluyen renderizadores WebGL y WebGPU, pero los renderizadores SVG y CSS3D también están disponibles como complementos.

[Ejemplos](https://threejs.org/examples/) &mdash;
[Documentación](https://threejs.org/docs/) &mdash;
[Manual](https://threejs.org/manual/) &mdash;
[Wiki](https://github.com/mrdoob/three.js/wiki) &mdash;
[Migración](https://github.com/mrdoob/three.js/wiki/Migration-Guide) &mdash;
[Preguntas](https://stackoverflow.com/questions/tagged/three.js) &mdash;
[Foro](https://discourse.threejs.org/) &mdash;
[Discord](https://discord.gg/56GBJwAnUS)

### Uso

Este código crea una escena, una cámara y un cubo geométrico, y agrega el cubo a la escena. Luego crea un renderizador `WebGL` para la escena y la cámara, y agrega esa ventana gráfica al elemento `document.body`. Finalmente, anima el cubo dentro de la escena para la cámara.

```javascript
import * as THREE from 'three';

const width = window.innerWidth, height = window.innerHeight;

// inicialización

const camera = new THREE.PerspectiveCamera( 70, width / height, 0.01, 10 );
camera.position.z = 1;

const scene = new THREE.Scene();

const geometry = new THREE.BoxGeometry( 0.2, 0.2, 0.2 );
const material = new THREE.MeshNormalMaterial();

const mesh = new THREE.Mesh( geometry, material );
scene.add( mesh );

const renderer = new THREE.WebGLRenderer( { antialias: true } );
renderer.setSize( width, height );
renderer.setAnimationLoop( animate );
document.body.appendChild( renderer.domElement );

// animación

function animate( time ) {

	mesh.rotation.x = time / 2000;
	mesh.rotation.y = time / 1000;

	renderer.render( scene, camera );

}
```

Si todo sale bien, deberías ver [esto](https://jsfiddle.net/v98k6oze/).

### Clonando este repositorio

Clonar el repositorio con todo su historial resulta en una descarga de ~2 GB. Si no necesitas todo el historial, puedes usar el parámetro `depth` para reducir significativamente el tamaño de descarga.

```sh
git clone --depth=1 https://github.com/mrdoob/three.js.git
```

### Registro de cambios

[Releases](https://github.com/mrdoob/three.js/releases)

## Cambios en la traducción al español

Esta versión incluye traducciones completas al español:

### Archivos traducidos:
- `package.json` - Descripción y palabras clave
- `README.md` - Documentación principal 
- `README-ES.md` - Documentación en español (nuevo archivo)
- `editor/index.html` - Título del editor
- `editor/manifest.json` - Nombre de la aplicación
- `editor/js/Strings.js` - Sistema completo de traducción del editor
- `editor/js/Config.js` - Configuración predeterminada en español
- `editor/js/Sidebar.Settings.js` - Soporte para idioma español
- `examples/index.html` - Título de ejemplos
- `docs/index.html` - Título de documentación
- Varios archivos HTML de ejemplos con títulos traducidos

### Características de la traducción:
- **Editor completamente en español**: Todos los menús, botones, etiquetas y mensajes
- **Idioma predeterminado español**: Se inicia en español automáticamente
- **Selector de idiomas**: Permite cambiar entre español, inglés, francés, chino, japonés, coreano y farsi
- **Traducciones técnicas precisas**: Terminología 3D y gráficos apropiada en español
- **Consistencia**: Uso consistente de terminología a lo largo de toda la aplicación

### Términos clave traducidos:
- **Mesh** → **Malla**
- **Shader** → **Shader** (se mantiene por ser término técnico establecido)
- **Geometry** → **Geometría**  
- **Material** → **Material**
- **Scene** → **Escena**
- **Camera** → **Cámara**
- **Light** → **Luz**
- **Render** → **Renderizar**
- **Animation** → **Animación**

[npm]: https://img.shields.io/npm/v/three
[npm-url]: https://www.npmjs.com/package/three
[build-size]: https://badgen.net/bundlephobia/minzip/three
[build-size-url]: https://bundlephobia.com/result?p=three
[npm-downloads]: https://img.shields.io/npm/dw/three
[npmtrends-url]: https://www.npmtrends.com/three
[deepscan]: https://deepscan.io/api/teams/16600/projects/19901/branches/525701/badge/grade.svg
[deepscan-url]: https://deepscan.io/dashboard#view=project&tid=16600&pid=19901&bid=525701
[discord]: https://img.shields.io/discord/685241246557667386
[discord-url]: https://discord.gg/56GBJwAnUS
