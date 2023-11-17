set terminal pngcairo enhanced font 'Verdana,12'

# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
mibs_col = 12


# Étiquettes des axes
set xlabel "version"
set ylabel "Mib/s"

set yrange [0:*]
set key center top

# Style d'histogramme
set style data histograms
set style histogram cluster gap 1

# Configurer le format des étiquettes sur l'axe x
set xtics rotate by -45
set style fill solid border -1



# Charger les données depuis des fichiers texte
datafile1 = 'dot_clang/dot_O0.txt'
datafile2 = 'dot_clang/dot_O1.txt'
datafile3 = 'dot_clang/dot_O2.txt'
datafile4 = 'dot_clang/dot_O3.txt'
datafile5 = 'dot_clang/dot_Ofast.txt'
datafile6 = 'dot_clang/dot_Os.txt'

datafile7 = 'dot_gcc/dot_O0.txt'
datafile8 = 'dot_gcc/dot_O1.txt'
datafile9 = 'dot_gcc/dot_O2.txt'
datafile10 = 'dot_gcc/dot_O3.txt'
datafile11 = 'dot_gcc/dot_Ofast.txt'
datafile12 = 'dot_gcc/dot_Os.txt'


# Dessiner l'histogramme1
# Titre du graphique
set title "Histogramme de comparaison entre les version-clang"
set output 'comparaison_entre_flags_clang.png'
plot \
    datafile1 every ::1 using 12:xtic(1) t "clang-flag -O0" lc rgb "#AD7FBF", \
    datafile2 every ::1 using 12:xtic(1) t "clang-flag -O1" lc rgb "#59895C",\
    datafile3 every ::1 using 12:xtic(1) t "clang-flag -O2" lc rgb "#6DB0D9",\
    datafile4 every ::1 using 12:xtic(1) t "clang-flag -O3" lc rgb "#EEB210",\
    datafile5 every ::1 using 12:xtic(1) t "clang-flag -Ofast" lc rgb "#CB4335",\
    datafile6 every ::1 using 12:xtic(1) t "clang-flag -Os" lc rgb "#E410EE"

# Dessiner l'histogramme2
# Titre du graphique
set title "Histogramme de comparaison entre les version-gcc"
set output 'comparaison_entre_flags_GCC.png'
plot \
    datafile7 every ::1 using 12:xtic(1) t "gcc-flag -O0" lc rgb "#AD7FBF", \
    datafile8 every ::1 using 12:xtic(1) t "gcc-flag -O1" lc rgb "#59895C",\
    datafile9 every ::1 using 12:xtic(1) t "gcc-flag -O2" lc rgb "#6DB0D9",\
    datafile10 every ::1 using 12:xtic(1) t "gcc-flag -O3" lc rgb "#EEB210",\
    datafile11 every ::1 using 12:xtic(1) t "gcc-flag -Ofast" lc rgb "#CB4335",\
    datafile12 every ::1 using 12:xtic(1) t "gcc-flag -Os" lc rgb "#E410EE"