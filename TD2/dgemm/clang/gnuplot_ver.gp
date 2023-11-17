set terminal pngcairo enhanced font 'Verdana,12'

# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
col = 11

# Titre du graphique
set title "Histogramme comparant les version de dgemm-clang"

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
datafile1 = 'dgemm0fast.txt'
datafile2 = 'dgemmO0.txt'
datafile3 = 'dgemmO1.txt'
datafile4 = 'dgemmO2.txt'
datafile5 = 'dgemmO3.txt'


# Dessiner l'histogramme1
set output 'comparaison_version_dgemm-Ofast.png'
plot datafile1 every ::1 using col:xtic(1) t "flag -Ofast" lc rgb "#C39BD3"


# Dessiner l'histogramme2
set output 'comparaison_version_dgemm-O0.png'
plot datafile2 every ::1 using col:xtic(1) t "flag -O0" lc rgb "#C39BD3"

# Dessiner l'histogramme3
set output 'comparaison_version_dgemm-O1.png'
plot datafile3 every ::1 using col:xtic(1) t "flag -O1" lc rgb "#C39BD3"

# Dessiner l'histogramme4
set output 'comparaison_version_dgemm-O2.png
plot datafile4 every ::1 using col:xtic(1) t "flag -O2" lc rgb "#C39BD3"

# Dessiner l'histogramme5
set output 'comparaison_version_dgemm-O3.png'
plot datafile5 every ::1 using col:xtic(1) t "flag -O3" lc rgb "#C39BD3"