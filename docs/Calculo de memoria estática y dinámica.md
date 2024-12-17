## Cálculo de memoria: 🖥️​

Para calcular la ocupación de la memoria se debe considerar la:

▪️ **Memoria estática:** Variables locales y globales del programa.  
▪️ **Memoria dinámica:** Cantidad de veces que se reserva y libera memoria con `new` y `dispose`.

---

✔️​ Se entrega una tabla de ocupación orientativa donde cada tipo de dato tiene un valor:

- **char:** 1 byte  
- **boolean:** 1 byte  
- **integer:** 4 bytes  
- **real:** 8 bytes  
- **string:** (tamaño + 1 byte)  
- **subrango:** depende del tipo  
- **registro:** suma de sus campos  
- **arreglos:** (dimF * tamaño del tipo de elemento)  
- **puntero:** 4 bytes  

---

### Ejemplo:

```pascal
program tres;
type
    puntero = ^real; 
    puntero2 = ^char;
    persona = record
        nombre: string[20]; //-> 21 bytes
        dni: integer;       //-> 4 bytes
    end;

var
    p: puntero;           //-> 4 bytes
    q: puntero2;          //-> 4 bytes
    per: persona;         //-> 25 bytes
    precio: real;         //-> 8 bytes
                          //-> TOTAL: 41 bytes
begin
    new(p); // Se reserva espacio para el contenido de p que es real -> 8 bytes
    new(q); // Se reserva espacio para el contenido de q que es char -> 1 byte
            //-> TOTAL MEMORIA DINÁMICA: 9 bytes

            //-> TOTAL MEMORIA ESTÁTICA: 41 bytes
end.

  
