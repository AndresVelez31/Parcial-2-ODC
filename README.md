<div align="center">
  <h1>PARCIAL 2 - Organización de Computadores </h1>
  <h1> 💻 Raiz Cuadrada e Iniciales en Pantalla </h1>
</div>

## 👥 Equipo

- **Andrés Felipe Velez Alvarez** (A)
- **Simón Mazo Gomez** (S)
- **Sebastián Salazar Henao** (B)

> **Nota:** Dado que Simón y Sebastián comparten la inicial 'S', decidimos usar la letra 'B' para representar a Sebastián.

## 📋 Descripción del Proyecto

Este proyecto implementa dos ejercicios fundamentales en **Hack Assembly** (Nand2Tetris) que demuestran el dominio de arquitectura de computadores a bajo nivel:

### 🔢 Ejercicio 1: Cálculo de Raíz Cuadrada Entera

Implementación de un algoritmo que calcula la parte entera de la raíz cuadrada de un número almacenado en el registro de memoria 16, guardando el resultado en el registro 19.

**Características:**
- Utiliza únicamente operaciones básicas (suma, resta, comparación, saltos)
- Implementa multiplicación mediante sumas repetidas
- Método de aproximación iterativa incremental
- Sin uso de librerías ni instrucciones avanzadas

**Algoritmo:**
```
1. Inicializar candidato i = 0
2. Para cada i, calcular i² mediante sumas repetidas
3. Comparar i² con el número objetivo
4. Si i² ≤ número < (i+1)², entonces i es la raíz
5. Guardar resultado en RAM[19]
```

**Registros utilizados:**
- `RAM[16]` (num): Número de entrada
- `RAM[17]` (i): Candidato actual
- `RAM[18]` (sqr): Cuadrado temporal (i²)
- `RAM[19]` (res): Resultado final
- `RAM[20]` (cnt): Contador auxiliar para multiplicación

### 🎨 Ejercicio 2: Iniciales Interactivas en Pantalla

Programa que dibuja las letras A, S y B en la pantalla del emulador Hack, con capacidad de interacción mediante teclado.

**Características:**
- **Visualización inicial:** Las tres letras se muestran desde el inicio, lado a lado
- **Dos tipografías por letra:** Cada inicial tiene dos estilos visuales superpuestos
- **Interacción por teclado:**
  - Presionar `A`: Muestra solo la letra A
  - Presionar `S`: Muestra solo la letra S
  - Presionar `B`: Muestra solo la letra B
  - Presionar `ESC`: Muestra todas las letras nuevamente
  - Presionar `BACKSPACE`: Limpia la pantalla
- **Mapeo pixel a pixel:** Dibujado directo en memoria de pantalla (SCREEN)
- **Sistema de retorno:** Implementación de funciones con direcciones de retorno usando R14

**Diseño técnico:**
- Offset horizontal para posicionar letras (A en posición 0, S en posición 5, B en posición 10)
- Funciones modulares para cada letra
- Sistema de limpieza de pantalla
- Detección y filtrado de teclas específicas
- Espera de liberación de tecla para evitar repeticiones

## 📁 Estructura del Repositorio

```
.
├── SQRT.asm              # Ejercicio 1: Raíz cuadrada entera
├── iniciales.asm         # Ejercicio 2: Iniciales interactivas
├── EXAMEN PARCIAL 2.pdf  # Documento con especificaciones del examen
└── README.md             # Este archivo
```

## 🚀 Cómo Ejecutar

### Requisitos
- Emulador Nand2Tetris (CPUEmulator.sh o CPUEmulator.bat)
- Los archivos `.asm` del proyecto

### Ejercicio 1: Raíz Cuadrada
1. Abrir el emulador de CPU de Nand2Tetris
2. Cargar el archivo `SQRT.asm`
3. Modificar el valor inicial en `RAM[16]` si se desea probar con otro número
4. Ejecutar el programa
5. Verificar el resultado en `RAM[19]`

**Casos de prueba:**
- RAM[16] = 0 → RAM[19] = 0
- RAM[16] = 1 → RAM[19] = 1
- RAM[16] = 4 → RAM[19] = 2
- RAM[16] = 15 → RAM[19] = 3
- RAM[16] = 16 → RAM[19] = 4

### Ejercicio 2: Iniciales Interactivas
1. Abrir el emulador de CPU de Nand2Tetris
2. Cargar el archivo `iniciales.asm`
3. Ejecutar el programa
4. Las letras A, S y B aparecerán automáticamente en pantalla
5. Interactuar usando el teclado:
   - `A`: Mostrar solo A
   - `S`: Mostrar solo S
   - `B`: Mostrar solo B
   - `ESC`: Mostrar todas
   - `BACKSPACE`: Limpiar pantalla

## 🎯 Objetivos de Aprendizaje Alcanzados

- ✅ Implementación de algoritmos matemáticos en lenguaje ensamblador
- ✅ Manipulación directa de memoria RAM
- ✅ Mapeo y control de memoria de pantalla (Screen)
- ✅ Detección y procesamiento de entradas de teclado (Keyboard)
- ✅ Diseño de funciones con sistema de retorno manual
- ✅ Optimización de código a bajo nivel
- ✅ Comprensión profunda de arquitectura de computadores

## 💡 Decisiones de Diseño

### Raíz Cuadrada
- **Método elegido:** Aproximación iterativa incremental
- **Justificación:** Balance entre simplicidad de implementación y eficiencia. Al no tener instrucciones de multiplicación, usamos sumas repetidas.
- **Optimización:** Guardamos i² en cada iteración para evitar recalcular

### Iniciales
- **Disposición:** Horizontal con offset de 5 posiciones entre letras
- **Tipografías:** Uso de diferentes patrones de bits y rellenos para crear contraste visual
- **Control de flujo:** Sistema de saltos condicionales basado en códigos ASCII
- **Modularidad:** Cada letra es una función independiente reutilizable

## 🔧 Dificultades Técnicas Superadas

1. **Multiplicación sin instrucción dedicada:** Resuelto mediante loops de suma
2. **Sincronización de teclado:** Implementación de espera de liberación de tecla
3. **Mapeo de pantalla:** Cálculo correcto de offsets y direcciones de memoria
4. **Sistema de retorno:** Uso de registros auxiliares (R13, R14) para simular llamadas a función

## **📽️ Video Explicativo:** 
- https://youtu.be/57pdXWHzs-8
