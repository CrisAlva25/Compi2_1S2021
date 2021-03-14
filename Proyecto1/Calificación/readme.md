# Cambios Realizados en los Archivos de Entrada:

## 1. Archivos Basicos

    1.1 basico.pas
        - La salida a consola es diferente debido a los numeros. 


## 2. Archivos Intermedios

    2.1. intermedio.pas
        - No existen cambios ni errores

## 3. Archivos Avanzados

    3.1. anadidas.pas
        - No se realizo ninguna modificación debido que no lo acepta mi código

    3.2. listaDoble.pas
        - Fila 17: cambio fue cambiar que el type en vez de empezar en 1 empiece en 0
            DoubleList = array[1..20] of Node;      ->      DoubleList = array[0..20] of Node;

    3.3. recursivas.pas
        - No se realizo ningun cambio

    3.4. types.pas
        - No se realizo ningun cambio


## 4. Archivos Arreglo

    4.1. matrices.pas    
        - cambio fila 8 =       matrixR : array [0..4, 0..4] of integer;            ->  matrixR : matriz;
        - cambio fila 9 =	    matrixA, matrixB : array [0..4,0..4] of integer;    ->  matrixA, matrixB : matriz;
        - cambio fila 96 =      matrixAux : array[0..4,0..4] of integer;            ->  matrixAux : matriz;

    4.2. ordenamientoRapido.pas
        - cambio fila 5 =       v : array[0 .. 6] of integer;       ->      v : v_;

    4.3. ordenar.pas
    
        - Se agrego type fila 7 y 8:
            type 
                matriz = array[1..maximo] of integer;

        - cambio fila 8, actualmente fila 11 =      datos: array[1..maximo] of integer;     ->      datos: matriz; 


        

