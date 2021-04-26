# [] TODO Chequear CI en primero linea
# [] TODO Implementar timeout en valgrind

    if [ $# -eq 0 ]
then
    echo "CI en la primera linea de archivos: "
    echo ""
    echo "Cadena `head -1 src/cadena.cpp`"
    echo "Iterador ` head -1 src/iterador.cpp`"
    echo "UsoTads `head -1 src/usoTads.cpp`"
    echo "Binario `head -1 src/binario.cpp`"

    echo "Test dado por los profesores y diff: "
    echo ""

    for l in `ls test/*.in` 
    do
        n=`echo $l | cut -d'/' -f2 | cut -d'.' -f1`
        echo "Testing $n"
        `valgrind --leak-check=full --track-origins=yes -s ./principal < test/$n.in > test/$n.sal`
        echo `diff test/$n.sal test/$n.out`
    done
else
    if `make > 1` ; then
        if [ -e test/$1.sal ]; then 
            `rm test/$1.sal` 
        fi
        echo `valgrind --leak-check=full --track-origins=yes -s ./principal < test/$1.in > test/$1.sal`
        echo `diff test/$1.sal test/$1.out`
    fi
fi

#in use at exit: 0 bytes in 0 blocks
#valgrind error ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)