# Cargamos nuestro fichero
# Convertimo todo valor faltante a NA
data <- read.csv("1_PreparacionDeData/data/missing-data.csv", na.strings = "")

# Destruimos las filas con NA
data_cleaned <- na.omit(data)

# Preguntamos si en la fila 4 y columna 2 hay un NA
is.na(data[4, 2])
is.na(data[4, 1])
is.na(data$Income)

# Eliminamos los NA únicamente de la variable Income
data_income_cleaned <- data[!is.na(data$Income),]

# Identificamos los filas imcompletas, que tienen NA
# Devuelve si las filas están completas o no
complete.cases(data)

data_cleaned_2 <- data[complete.cases(data),]

# Convertir los ceros de ingreso en NA
data$Income[data$Income == 0] <- NA

# Medidas de centralización y dispersión
mean(data$Income)

mean(data$Income, na.rm = TRUE) # Ignoramos LOS NA

# Desviación típica
sd(data$Income)
sd(data$Income, na.rm = TRUE)
