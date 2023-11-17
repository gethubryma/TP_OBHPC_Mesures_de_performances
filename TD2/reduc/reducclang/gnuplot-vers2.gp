set terminal pngcairo enhanced font 'Verdana,12'

# Définir le séparateur de champ
set datafile separator ";"

# Définir les colonnes de données
col = 12

# Titre du graphique
set title "Histogramme de comparaison entre les version-clang"

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
datafile1 = 'reduc_O0.txt'
datafile2 = 'reduc_O1.txt'
datafile3 = 'reduc_O2.txt'
datafile4 = 'reduc_O3.txt'
datafile5 = 'reduc_Ofast.txt'
datafile6 = 'reduc_Os.txt'


# Dessiner l'histogramme1
set output 'comparaison_version_reduc-O0.png'
plot datafile1 every ::1 using col:xtic(1) t "flag -O0" lc rgb "#59895C"


# Dessiner l'histogramme2
set output 'comparaison_version_reduc-O1.png'
plot datafile2 every ::1 using col:xtic(1) t "flag -O1" lc rgb "#59895C"

# Dessiner l'histogramme3
set output 'comparaison_version_reduc-O2.png'
plot datafile3 every ::1 using col:xtic(1) t "flag -O2" lc rgb "#59895C"

# Dessiner l'histogramme4
set output 'comparaison_version_reduc-O3.png
plot datafile4 every ::1 using col:xtic(1) t "flag -O3" lc rgb "#59895C"

# Dessiner l'histogramme5
set output 'comparaison_version_reduc-Ofast.png'
plot datafile5 every ::1 using col:xtic(1) t "flag -Ofast" lc rgb "#59895C"

# Dessiner l'histogramme6
set output 'comparaison_version_reduc-Os.png'
plot datafile6 every ::1 using col:xtic(1) t "flag -Os" lc rgb "#59895C"