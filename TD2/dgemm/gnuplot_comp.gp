
set terminal pngcairo enhanced font 'Verdana,12'
# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
col = 11

# Titre du graphique
set title "Histogramme comparant les compilateurs pour chaque flags"

# Étiquettes des axes
set xlabel "version"
set ylabel "Mib/s"

set yrange [0:*]
set key left top
# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

# Configurer le format des étiquettes sur l'axe x
set xtics rotate by -45
set style fill solid border -1

# Charger les données depuis des fichiers texte
datafile1 = 'gcc/dgemmfast.txt'
datafile2 = 'clang/dgemm0fast.txt'
datafile3 = 'gcc/dgemmO0.txt'
datafile4 = 'clang/dgemmO0.txt'
datafile5 = 'gcc/dgemmO1.txt'
datafile6 = 'clang/dgemmO1.txt'
datafile7 = 'gcc/dgemmO2.txt'
datafile8 = 'clang/dgemmO2.txt'
datafile9 = 'gcc/dgemmO3.txt'
datafile10 = 'clang/dgemmO3.txt'

# Dessiner l'histogramme en superposant les données
set output 'histogram_compared_compilateur-Ofast.png'
plot \
    datafile1 every ::1 using col:xtic(1) t "flag-gcc -Ofast" lc rgb "#32CD32", \
    datafile2 every ::1 using col:xtic(1) t "flag-clang -Ofast" lc rgb "#C39BD3"

set output 'histogram_compared_compilateur-O0.png'
plot \
    datafile3 every ::1 using col:xtic(1) t "flag-gcc -O0" lc rgb "#32CD32", \
    datafile4 every ::1 using col:xtic(1) t "flag-clang -O0" lc rgb "#C39BD3"

set output 'histogram_compared_compilateur-O1.png'
plot \
    datafile5 every ::1 using col:xtic(1) t "flag-gcc -O1" lc rgb "#32CD32", \
    datafile6 every ::1 using col:xtic(1) t "flag-clang -O1" lc rgb "#C39BD3"

set output 'histogram_compared_compilateur-O2.png'
plot \
    datafile6 every ::1 using col:xtic(1) t "flag-gcc -O2" lc rgb "#32CD32", \
    datafile7 every ::1 using col:xtic(1) t "flag-clang -O2" lc rgb "#C39BD3"

set output 'histogram_compared_compilateur-O3.png'
plot \
    datafile8 every ::1 using col:xtic(1) t "flag-gcc -O3" lc rgb "#32CD32", \
    datafile9 every ::1 using col:xtic(1) t "flag-clang -O3" lc rgb "#C39BD3"
   
