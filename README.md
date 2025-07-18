## Historia del código fuente para luces de carroza (2009)

Allá por el año 2011, me encontraba investigando quién había utilizado, en 2009, una computadora para controlar las luces de una carroza durante la Fiesta de los Estudiantes en Concordia, Entre Ríos.

Por suerte, logré contactar a una persona que afirmaba tener una copia del código fuente utilizado, escrito en Quick Basic. Eventualmente, esta persona me compartió el código en un disquete, y comencé a investigarlo.

Lamentablemente, no logré hacerlo funcionar en las computadoras que tenía en ese momento, ya que no me habían explicado cómo usar Quick Basic, y para entonces ya era una herramienta bastante obsoleta. Además, por un descuido, en 2011 edité parcialmente el código fuente, y casi pierdo el nombre del autor original: alguien que se hacía llamar **"nato"**.

Hasta el día de hoy, no sé con certeza quién fue el autor de estos archivos. Por eso, los comparto por acá para que cualquiera que esté interesado pueda investigarlos.

---

**Si alguna vez consigo saber quién los hizo y/o los utilizó, puede ponerse en contacto conmigo. Así podré extender el Templete.**

Lo que sigue es un análisis hecho por un LLM.

# Análisis del archivo `Luz-16c.bas`

Este programa, escrito en QuickBasic, fue diseñado para controlar luces a través del **puerto paralelo** (`OUT &H378`) en una carroza, probablemente durante un evento como la Fiesta de los Estudiantes en Concordia, Entre Ríos.

---

## 🧠 Estructura general del programa

- **Lenguaje:** QuickBasic
- **Salida:** Puerto paralelo (Puerto LPT, dirección `&H378`)
- **Entrada:** Teclado (uso de `INKEY$`)
- **Funciones principales:**
  - Control de patrones de luces.
  - Múltiples "programas" de iluminación seleccionables con teclas (`a`–`m`).
  - Visualización en pantalla con `LOCATE` y `PRINT`.
  - Control de velocidad con las teclas `+` y `-`.
  - Alternancia entre modos con las teclas `1`, `0`, `7`, `8`, `9`.

---

## 💡 Variables clave

- `b$()`  
  Contiene patrones visuales predefinidos como cadenas, probablemente para mostrar en pantalla de forma decorativa.

- `n()`  
  Arreglo que contiene los patrones binarios a enviar al puerto paralelo para encender o apagar luces.

- `vel`  
  Control de velocidad (retardo entre cambios de luces).

- `pv`  
  Paso de variación de velocidad con `+` o `-`.

- `c$`, `a$`, `v$`  
  Capturan entradas del teclado.

---

## 🔘 Control del puerto paralelo

La instrucción `OUT &H378, valor` es utilizada para enviar un byte al **puerto paralelo**, encendiendo o apagando bits individuales que corresponden a las salidas físicas (luces o relés conectados).

---

## 🎛️ Menú interactivo (líneas 20–50)

Se presenta un menú textual en pantalla con varios programas (`a` a `m`) y un sistema de entrada por teclado:

- Cada letra ejecuta un "programa de luces".
- `z` termina la ejecución.
- `7`, `8`, `9` cambian el modo de visualización (pantalla).

---

## 🧩 Programas de luces

Cada bloque de programa (como `1000`, `2000`, `3000`, etc.) define un patrón de encendido:

| Programa | Tecla | Descripción                                               |
|----------|-------|-----------------------------------------------------------|
| A        | a     | Corrida doble hacia la derecha                            |
| B        | b     | Ida y vuelta con destello completo                        |
| C        | c     | Corrida simple derecha                                    |
| D        | d     | Corrida con "stop" (efecto acumulativo)                  |
| E        | e     | Ida y vuelta doble                                        |
| F        | f     | Ida y vuelta con patrón lleno                             |
| G        | g     | Aleatorio                                                 |
| H        | h     | Corrida simple izquierda                                  |
| I        | i     | Ida y vuelta con stop, extendido                          |
| J        | j     | Variante con cierre (con bits 127 a 0)                    |
| K        | k     | Adentro hacia afuera (efecto simétrico)                   |
| L        | l     | Salteado intermitente (170, 85, etc.)                     |
| M        | m     | Doble salteado con valores complejos                      |

---

## 🖥️ Visualización en pantalla

Controlado por subrutinas:
- `2700`, `2766`, `2866`: Variantes del display según si se presiona `7`, `8`, o `9`.
- Se muestran los patrones visuales definidos en `b$()` como representación del estado actual de los bits enviados.

---

## ⏱️ Subrutina de velocidad (2500)

Permite modificar la velocidad en tiempo real con:
- `+` para acelerar
- `-` para frenar

Y cambiar entre programas sin volver al menú principal.

---

## 🔄 Modo cíclico

Muchos programas tienen lógica que permite repetir una secuencia hasta que se presione `"0"` o se alcance cierto número de repeticiones (`con = 6`, luego reinicia).

---

## 🧑‍💻 Autoría

- En múltiples partes del código aparece el mensaje: "hecho por nato"

por lo que el autor original (o quien lo ejecutaba) probablemente se identificaba con ese nombre.

---

## 📌 Observaciones

- El programa requiere hardware específico (PC con puerto paralelo).
- Fue pensado para un entorno de fiesta o desfile con luces secuenciales.
- Es un excelente ejemplo de control digital con recursos muy limitados (QuickBasic + disquete).
- El código está segmentado y reutiliza patrones (`n(w)` con `OUT`) para componer todos los efectos.

---

## 🧠 Conclusión

Este archivo es un testimonio de cómo se combinaban creatividad y tecnología en el pasado para lograr efectos visuales impresionantes con recursos mínimos. Tiene valor tanto técnico como histórico y cultural. Compartir este tipo de código preserva un conocimiento muy específico de una era que ya pasó.

