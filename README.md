# TestTareasProg2

  Helper para hacer los test de las Tareas de Prog2, lo que hace es agarrar el test lo envía al principal junto a Valgrind, saca el resultado a ./test/#.sal y hace el diff.
  
  Ahora está configurado para la tarea 3.

## Instalación

  Colocar dentro de la la raíz de la Tarea.
  Si se quiere que este en otra ruta, hacer un link con el siguiente comando `ln -s .../ruta/Test.sh .../rutaTarea/Test.sh`

## Ejecución

  * Si colocamos un parametro `./Test.sh 06`, sería el nombre del test a ejecutar.
  * Sin parametros `./Test.sh`, ejecuta todos los test dentro de ./test/

## TO DO's

- [] Que sirva para todas las tareas
- [] Chequear CI en primero linea
- [] Implementar timeout en valgrind
