# Instalación de paquetes
install.packages("XML")

# Cargamos la librería
library(XML)

# Guardamos el fichero a emplear
url <- "1_PreparacionDeData/data/cd_catalog.xml"

# Puntero que localiza el documento
DataXML <- xmlParse(url) #XMLInternalDocument

# Obtenemos la estructura de datos del nodo raíz
rootnode <- xmlRoot(DataXML)

# Consultamos el primer elemento
rootnode[1]

# Recorremos el nodo raíz y aplicamos una función
# x: cada elemento del nodo raíz
# function(x) xmlSApply(x, xmlValue): Extraemos únicamente los valores
cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue) )

# Ordenamos nuestra tabla
# row.names = NULL: Las filas no tienen nombre
cds.catalog <- data.frame(t(cds_data), row.names = NULL)

# Visualización de la data
head(cds.catalog, 3)

# Funciones útiles
#xpathSApply()
#getNodeSet()


# Lectura de un fichero HTML
population_url <- "1_PreparacionDeData/data/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url) #Extracción de todas tablas

most_populated <- tables[[6]]
head(most_populated, 3)

# Extraemos la 6ta columna de manera directa
custom_table <- readHTMLTable(population_url, which = 6)
