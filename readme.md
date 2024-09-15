Aquí tienes la versión corregida y reorganizada de tu guía:

---

# **Guía de Instalación y Uso del Proyecto en Docker**

Este proyecto utiliza Docker para la gestión y despliegue de contenedores. El script `manager-notion.py` proporciona una interfaz de línea de comandos para construir, ejecutar y gestionar los contenedores.

## **Requisitos previos**

1. **Docker**: Asegúrate de que Docker esté instalado en tu máquina.
2. **Python**: El script de gestión está escrito en Python. Asegúrate de tener Python 3 instalado en tu máquina.
3. **Alacritty**: El script abre una terminal para cada contenedor al verificar los logs, por lo que debes tener instalada la terminal **Alacritty** (o modificar el script para usar otra terminal).

## **Comandos para Gestionar Contenedores**

El script `manager-notion.py` ofrece varias opciones para gestionar los contenedores Docker. A continuación, se explican los comandos disponibles:

### **1. Iniciar contenedores**

Al iniciar contenedores, el script construye la imagen Docker si no existe, asigna una red interna, expone el puerto 5000 dentro del contenedor y bindea los puertos del host de forma iterativa: el contenedor 0 al puerto 3000, el contenedor 1 al 3001, y así sucesivamente.

Para iniciar uno o más contenedores, ejecuta:

```bash
python3 manager-notion.py -n NUMERO_DE_CONTENEDORES
```

### **2. Reconstruir la imagen y reiniciar contenedores**

Si has realizado cambios en el Dockerfile o el código fuente y deseas reconstruir la imagen Docker:

```bash
python3 manager-notion.py -b
```

Para reiniciar todo el proceso (detener y eliminar contenedores e imágenes, luego reconstruir):

```bash
python3 manager-notion.py -r
```

### **3. Listar contenedores**

Para listar todos los contenedores que están en ejecución:

```bash
python3 manager-notion.py -l
```

Para listar todos los contenedores, incluidos los que están detenidos:

```bash
python3 manager-notion.py -ls
```

### **4. Mostrar logs de contenedores**

Para ver los logs en tiempo real de los contenedores en ejecución:

```bash
python3 manager-notion.py -g
```

Para ver los logs de todos los contenedores, incluidos los detenidos:

```bash
python3 manager-notion.py -a
```

### **5. Detener contenedores por IP o índice**

Para detener un contenedor específico utilizando su dirección IP:

```bash
python3 manager-notion.py -sip IP_DEL_CONTENEDOR
```

Para detener un contenedor utilizando su índice:

```bash
python3 manager-notion.py -sid INDICE_DEL_CONTENEDOR
```

### **6. Ejecutar un contenedor específico**

Para ejecutar un contenedor específico utilizando su índice:

```bash
python3 manager-notion.py -u INDICE_DEL_CONTENEDOR
```

### **7. Logs interactivos de contenedores tras su creación**

Para ver los logs en la terminal inmediatamente después de crear los contenedores:

```bash
python3 manager-notion.py -i
```

## **Ejemplo Completo**

Imagina que deseas hacer lo siguiente:

1. Iniciar 5 contenedores.
2. Ver los logs de todos los contenedores.
3. Detener un contenedor específico por su índice.

Puedes ejecutar los siguientes comandos:

```bash
# Iniciar 5 contenedores
python3 manager-notion.py -n 5

# Ver los logs de los contenedores en ejecución
python3 manager-notion.py -g

# Detener el contenedor con índice 3
python3 manager-notion.py -sid 3
```

## **Notas adicionales**

- Asegúrate de que los puertos utilizados por el proyecto estén disponibles en tu sistema o ajusta el mapeo de puertos según sea necesario.
- Los contenedores, a medida que se crean, bindean el puerto 5000 (donde se ejecuta la aplicación Flask) a los puertos a partir del 3000.

---

Esta versión está más organizada y clara, manteniendo el mismo contenido esencial.
