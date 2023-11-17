set terminal pngcairo enhanced font 'Verdana,12'

# Définir le séparateur 
set datafile separator ";"

# Titre du graphique
set title "histogramme de comparaison entre les version de dotprod-gcc"

# les axes
set xlabel "version"
set ylabel "Mib/s"

# Style 
set style data histograms
set style histogram cluster gap 1
set xtics rotate by -45
set style fill solid border -1

#definir la limite de l'axe y
set yrange [0:*]
set key left top
# liste des fichiers à utilisé 
datafile1 = 'dot_O0.txt'
datafile2 = 'dot_O1.txt'
datafile3 = 'dot_O2.txt'
datafile4 = 'dot_O3.txt'
datafile5 = 'dot_Ofast.txt'
datafile6 = 'dot_Os.txt'

# plot: dessiner les histogrammes
# Dessiner l'histogramme1
set output 'histog_compare_version_dotprod-O0.png'
plot datafile1 every ::1 using 12:xtic(1) t "flag -O0" lc rgb "#B06DD9"


# Dessiner l'histogramme2
set output 'histog_compare_version_dotprod-O1.png'
plot datafile2 every ::1 using 12:xtic(1) t "flag -O1" lc rgb "#B06DD9"

# Dessiner l'histogramme3
set output 'histog_compare_version_dotprod-O2.png'
plot datafile3 every ::1 using 12:xtic(1) t "flag -O2" lc rgb "#B06DD9"

# Dessiner l'histogramme4
set output 'histog_compare_version_dotprod-O3.png'
plot datafile4 every ::1 using 12:xtic(1) t "flag -O3" lc rgb "#B06DD9"

# Dessiner l'histogramme5
set output 'histog_compare_version_dotprod-Ofast.png'
plot datafile5 every ::1 using 12:xtic(1) t "flag -Ofast" lc rgb "#B06DD9"

# Dessiner l'histogramme5
set output 'histog_compare_version_dotprod-Os.png'
plot datafile6 every ::1 using 12:xtic(1) t "flag -Os" lc rgb "#B06DD9"