## Corrección y Eficiencia: 🎯🎨✨



# ÍNDICE

1. [Corrección](#corrección-📌)
   - [Testing](#🪧-testing)
   - [Debugging](#🐛-debugging)
   - [Walkthrough](#📣-WALKTHROUGH)
   - [Verificación](#☑️​-verificación)
2. [Eficiencia](#eficiencia-📌)
   - [Ejemplo 1: Algoritmo de tiempo constante](#ejemplo-1-algoritmo-de-tiempo-constante)
   - [Ejemplo 2: Con condicional IF](#ejemplo-2-con-condicional-if)
   - [Ejemplo 3: Con condicional ELSE](#ejemplo-3-con-condicional-else)
   - [Ejemplo 4: Con ciclo FOR](#ejemplo-4-con-ciclo-for)
   - [Ejemplo 5: Con ciclo WHILE](#ejemplo-5-con-ciclo-while)

---


### CORRECCIÓN: 📌​

Un programa se considera correcto si:
✔️​ Realiza la tarea buscada de acuerdo a sus especificaciones. 🎯🎯🎯

#### Técnicas para la corrección de programas:

- 🪧 **TESTING:**
  El testing es el proceso de verificar que un programa o sistema funcione correctamente. Consiste en ejecutar el software para detectar errores o fallos, asegurando que el código cumpla con los requisitos especificados. También se evalúan los casos límites del algoritmo.

- 🐛 **DEBUGGING:**
  Es el proceso de descubrir y reparar la causa del error. Para ello, se diseñan y aplican pruebas adicionales que permitan conocer y resolver la naturaleza del error. Además, es común agregar sentencias adicionales al programa para monitorear su comportamiento en determinados puntos de la ejecución.

- 📣 **WALKTHROUGH:**
  Implica recorrer el programa frente a una audiencia, explicando su funcionamiento y buscando posibles errores o mejoras.

- ☑️​ **VERIFICACIÓN:**
  Verificar un programa consiste en controlar las precondiciones y postcondiciones asociadas al mismo, asegurando que cumpla con los criterios establecidos. ✨✨✨

---

### EFICIENCIA: 📌​

Una vez que un algoritmo se considera correcto, el siguiente paso es determinar su eficiencia. ✨🎯🎨

- ⏳​ El análisis de la eficiencia estudia el tiempo que tarda un algoritmo en ejecutarse y la memoria que requiere.
- ❗ Siempre que los valores para medir la eficiencia cambien según los valores de entrada (por ejemplo, cortar un bucle a partir de un dato ingresado por teclado), se deben evaluar los casos límites y los peores casos del algoritmo.

#### CONSIDERACIONES PARA MEDIR LA EFICIENCIA:

Una instrucción elemental equivale a 1 UT (Unidad de Tiempo). 🎯🎨✨

##### EJEMPLOS:

1. **Algoritmo de tiempo constante:**

```pascal
aux := 4;               // T(1) = 1 UT
aux := aux * 5;         // T(2) = multiplicación + asignación = 2 UT
xd := aux;              // T(3) = 1 UT
// TOTAL: 4 UT
```

---

2. **Con condicional IF:**

```pascal
aux := 49;              // T(1) = 1 UT
aux := aux * 5;         // T(2) = 2 UT
if (aux > 45) then begin
  // Evaluación de condición del IF: 1 UT
  temp := aux - 5;      // Resta + asignación = 2 UT
  x := temp + aux + 2;  // Suma + suma + asignación = 3 UT
                        // T(3) = 1 + 2 + 3 = 6 UT
end;
x := x * 10;            // T(4) = 2 UT
// TOTAL: 11 UT
```

---

3. **Con condicional ELSE:**
   La evaluación del condicional ELSE es exactamente igual que la del IF. Sin embargo, antes de calcular el tiempo de ejecución, se debe identificar si el cálculo de memoria y tiempo se realizará siguiendo el bloque IF o el bloque ELSE. Se debe considerar siempre la rama que implique más UT.


---

4. **Con ciclo FOR:**
   Se debe seguir la formula 3*(N) + 2 + N*(Cuerpo)
   Siendo N la cantidad de veces que se ejecuta el for (10 en el siguiente ejemplo).
   Siendo Cuerpo las UT de las instrucciones adentro del for.
```pascal
aux := 49;              // T(1) = 1 UT
aux := aux * 5;         // T(2) = 2 UT
for i:=1 to 10 do       // T(3) = 3*10 + 2 + 10 * 5 = 82UT
  temp := aux - 5;      // 2UT
  x := temp + aux + 2;  // 3UT
end;
x := x * 10;            // T(4) = 2 UT
// TOTAL: 87 UT
```

---


5. **Con ciclo WHILE:**
   Se debe seguir la formula C+1 (EvaluarCond) + N (cuerpo)
   Siendo N la cantidad de veces que se ejecuta el while.
   Siendo EvaluarCond las UT que se tarda en evaluar las condiciones del while.
   Siendo Cuerpo las UT dentro del while
```pascal
aux := 5;        // T(1) = 1 UT
while (aux>5) do       // T(2) = 5+1 * 1 + 5 * 4 = 26UT
  x:=x+1;   //2UT
  aux:= aux - 1; //2UT
end;
x := x * 10;            // T(4) = 2 UT
// TOTAL: 28 UT
```
