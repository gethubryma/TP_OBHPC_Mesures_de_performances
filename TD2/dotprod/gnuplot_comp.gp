set terminal pngcairo enhanced font 'Verdana,12'
# le séparateur de champ
set datafile separator ";"


# Titre du graphique
set title "Histogramme de comparaison entre les compilateur"

# les axes
set xlabel "Titre"
set ylabel "Mib/s"

set yrange [0:*]

# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

set xtics rotate by -45
set style fill solid border -1

set key left top
# Charger les fichier
datafile1 = 'dot_gcc/dot_O0.txt'
datafile2 = 'dot_clang/dot_O0.txt'
datafile3 = 'dot_gcc/dot_O1.txt'
datafile4 = 'dot_clang/dot_O1.txt'
datafile5 = 'dot_gcc/dot_O2.txt'
datafile6 = 'dot_clang/dot_O2.txt'
datafile7 = 'dot_gcc/dot_O3.txt'
datafile8 = 'dot_clang/dot_O3.txt'
datafile9 = 'dot_gcc/dot_Ofast.txt'
datafile10 = 'dot_clang/dot_Ofast.txt'
datafile11 = 'dot_gcc/dot_Os.txt'
datafile12 = 'dot_clang/dot_Os.txt'

# Dessiner l'histogramme en superposant les données
set output 'comparaison entre les compilateur-O0.png'
plot \
    datafile1 every ::1 using 12:xtic(1) t "gcc-flag -O0" lc rgb "#59895C", \
    datafile2 every ::1 using 12:xtic(1) t "clang-flag -O0" lc rgb "#AD7FBF"


set output 'comparaison entre les compilateur-O1.png'   
plot \
    datafile3 every ::1 using 12:xtic(1) t "gcc-flag -O1" lc rgb "#59895C", \
    datafile4 every ::1 using 12:xtic(1) t "clang-flag -O1" lc rgb "#AD7FBF"


set output 'comparaison entre les compilateur-O2.png'   
plot \
    datafile5 every ::1 using 12:xtic(1) t "gcc-flag -O2" lc rgb "#59895C", \
    datafile6 every ::1 using 12:xtic(1) t "clang-flag -O2" lc rgb "#AD7FBF"

set output 'comparaison entre les compilateur-O3.png'   
plot \
    datafile7 every ::1 using 12:xtic(1) t "gcc-flag -O3" lc rgb "#59895C", \
    datafile8 every ::1 using 12:xtic(1) t "clang-flag -O3" lc rgb "#AD7FBF"

set output 'comparaison entre les compilateur-Ofast.png'
set key center top    
plot \
    datafile9 every ::1 using 12:xtic(1) t "gcc-flag -Ofast" lc rgb "#59895C", \
    datafile10 every ::1 using 12:xtic(1) t "clang-flag -Ofast" lc rgb "#AD7FBF"


set output 'comparaison entre les compilateur-Os.png'   
plot \
    datafile11 every ::1 using 12:xtic(1) t "gcc-flag -Os" lc rgb "#59895C", \
    datafile12 every ::1 using 12:xtic(1) t "clang-flag -Os" lc rgb "#AD7FBF"
   