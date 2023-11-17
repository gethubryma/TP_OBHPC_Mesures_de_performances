set terminal pngcairo enhanced font 'Verdana,12'
# le séparateur de champ
set datafile separator ";"


# Titre du graphique
set title "Histogramme de comparaison entre les versions de reduc"

# les axes
set xlabel "version"
set ylabel "Mib/s"

set yrange [0:*]
set key left top

# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

set xtics rotate by -45
set style fill solid border -1

set key left top
# Charger les fichier
datafile1 = 'reducgcc/reduc_O0.txt'
datafile2 = 'reducclang/reduc_O0.txt'
datafile3 = 'reducgcc/reduc_O1.txt'
datafile4 = 'reducclang/reduc_O1.txt'
datafile5 = 'reducgcc/reduc_O2.txt'
datafile6 = 'reducclang/reduc_O2.txt'
datafile7 = 'reducgcc/reduc_O3.txt'
datafile8 = 'reducclang/reduc_O3.txt'
datafile9 = 'reducgcc/reduc_Ofast.txt'
datafile10 = 'reducclang/reduc_Ofast.txt'
datafile11 = 'reducgcc/reduc_Os.txt'
datafile12 = 'reducclang/reduc_Os.txt'

# Dessiner l'histogramme en superposant les données
set output 'comparaison_compilateur-O0.png'
plot \
    datafile1 every ::1 using 12:xtic(1) t "gcc-flag -O0" lc rgb "#AD7FBF", \
    datafile2 every ::1 using 12:xtic(1) t "clang-flag -O0" lc rgb "#59895C"


set output 'comparaison_compilateur-O1.png'   
plot \
    datafile3 every ::1 using 12:xtic(1) t "gcc-flag -O1" lc rgb "#AD7FBF", \
    datafile4 every ::1 using 12:xtic(1) t "clang-flag -O1" lc rgb "#59895C"


set output 'comparaison_compilateur-O2.png'   
plot \
    datafile5 every ::1 using 12:xtic(1) t "gcc-flag -O2" lc rgb "#AD7FBF", \
    datafile6 every ::1 using 12:xtic(1) t "clang-flag -O2" lc rgb "#59895C"

set output 'comparaison_compilateur-O3.png'   
plot \
    datafile7 every ::1 using 12:xtic(1) t "gcc-flag -O3" lc rgb "#AD7FBF", \
    datafile8 every ::1 using 12:xtic(1) t "clang-flag -O3" lc rgb "#59895C"

set output 'comparaison_compilateur-Ofast.png'  
set key center top  
plot \
    datafile9 every ::1 using 12:xtic(1) t "gcc-flag -Ofast" lc rgb "#AD7FBF", \
    datafile10 every ::1 using 12:xtic(1) t "clang-flag -Ofast" lc rgb "#59895C"


set output 'comparaison_compilateur-Os.png'   
plot \
    datafile11 every ::1 using 12:xtic(1) t "gcc-flag -Os" lc rgb "#AD7FBF", \
    datafile12 every ::1 using 12:xtic(1) t "clang-flag -Os" lc rgb "#59895C"
   