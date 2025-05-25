## **Ejercicios resueltos en lenguaje ensamblador NASM (X86)**

<br>

En este repositorio se presenta la resolución de tres ejercicios aritméticos (resta, multiplicación y división) en lenguaje ensamblador utilizando NASM (x86) y registros de diferentes tamaños (8, 16, 32 bits), los ejercicios fueron ejecutados en una máquina virtual Ubuntu de 64 bits.

<br>

### Ejercicio 1.

**Resta de tres enteros:** Programa para restar tres enteros, usando sólo registros de 16 bits.
- Realiza la operación `300 - 150 - 30`, utilizando solo registros de 16 bits (`AX`, `BX`). El resultado se convierte en texto y se muestra en consola.

<br>

### Ejercicio 2.

**Multiplicación:** Programa para multiplicar dos números enteros, usando registros de 8 bits. 
- Multiplica dos números utilizando registros de 8 bits (`AL`, `BL`), y presenta el resultado en consola. Se utiliza la instrucción `mul` para trabajar con valores pequeños.

<br>

### Ejercicio 3.

**Division:** Programa para dividir dos números enteros, usando registros de 32 bits.
- Divide dos números enteros utilizando registros de 32 bits (`EAX`, `EBX`, `EDX`) y muestra el cociente como resultado.

<br>

### Formato de salida

- Todos los programas convierten el resultado numérico a texto (formato ASCII) para mostrar su resultado en pantalla usando llamadas al sistema (int 0x80).  

- Los ceros en las cadenas de salida (por ejemplo, '0000' en la multiplicación) se agregan para asegurar que el número tenga un formato definido de dígitos.

<br>

### Requisitos del entorno

- **Sistema operativo:** Ubuntu 64 bits (máquina virtual)
- **Assembler:** NASM
- **Linker:** `ld` (para generar ejecutables)
- **Terminal compatible:** Bash u otra terminal de Linux
- **Comandos usados:** (para resta por ejemplo)
  ```bash
  nasm -f elf32 resta.asm -o resta.o
  ld -m elf_i386 resta.o resta
  ./resta

