# Instalación y carga de la librería
install.packages("jsonlite")
install.packages("curl")

library(jsonlite)
library(curl)

# Lectura de ficheros JSON
data_1 <- fromJSON("1_PreparacionDeData/data/students.json")
data_2 <- fromJSON("1_PreparacionDeData/data/student-courses.json")

# Lectura de ficheros JSON online
url <- "http://www.floatrates.com/daily/usd.json"
currencies <- fromJSON(url)

# Símbolo $ (acceso a nuestra data)
currencies_data <- currencies$eur

head(data_1, 3)
data_1$Email

# Accedemos a las columnas 3 y 5 de un dataframe
# data[, c(3, 5)]
