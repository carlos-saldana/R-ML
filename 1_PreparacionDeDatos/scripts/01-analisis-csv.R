#               -----------------------------------------
#               ---------- Lectura de ficheros ----------
#               -----------------------------------------

auto <- read.csv("1_PreparacionDeData/data/auto-mpg.csv", header = TRUE, sep = ",")
names(auto) #Headers name

# read.table == read.csv("filename", sep = " ")
# read.csv2 == read.csv("filename") | por defecto: sep = ";", dec = "," | dec -> separador decimal
# Tabulador como separador -> sep = "\t"

# Dataframe sin cabecera
auto_no_header <- read.csv("1_PreparacionDeData/data/auto-mpg-noheader.csv", header = FALSE, sep = ",")
head(auto_no_header, 5) #Imprimimos las 5 primeras líneas

# Dataframe con cabecera personalizada
auto_custom_header <- read.csv("1_PreparacionDeData/data/auto-mpg-noheader.csv", header = FALSE,
                               col.names = c("Número", "Millas_por_galeón", "Cilindrada", "Desplazamiento",
                                             "Caballos_de_potencia", "Peso", "Aceleración", "Año_del_modelo",
                                             "Modelo_del_coche"))
head(auto_custom_header, 2)

# Reemplazar los NA (los valores "" pasan a ser identificados como NA por R)
# Los strings pueden ser tratados como caracteres o factores (por defecto)
# stringAsFactors = TRUE (por defecto R convierte los strings a factores)
auto_NA <- read.csv("1_PreparacionDeData/data/auto-mpg.csv", header = TRUE, sep = ",", strings.na = "",
                    stringsAsFactors = False)

# Carga de datos online
who_from_internet <- read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv", header = TRUE)

#NA: no available
#na.strings = ""
#as.character() -> de variable categórica (factor) a caracter