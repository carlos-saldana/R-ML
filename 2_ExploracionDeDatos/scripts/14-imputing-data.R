# Cargamos nuestro fichero
#stringAsFactors = FALSE -> permite evitar crear variables categóricas
data <- read.csv("1_PreparacionDeData/data/auto-mpg.csv", header = TRUE,
                 stringsAsFactors = FALSE)

# Convertimos cualquier columna a categoría
data$cylinders <- factor(data$cylinders, levels = c(3, 4, 5, 6, 8),
                         labels = c("3_cilindros", "4_cilindros", "5_cilindros",
                                    "6_cilindros", "8_cilinrods"))

# Obtenemos un resumen de nuestro dataset
summary(data)

summary(data$cylinders)
summary(data$mpg)

# Obtenemos la estructura del dataframe
str(data)
str(data$cylinders)


# ESTADÍSTICOS Y MEDIDAS BÁSICAS

install.packages(c("modeest", "raster", "moments"))
library(modeest) #moda
library(raster) #quantiles, cv
library(moments) #coeficiente de asimetría, curtosis

x = data$mpg

# Medidas de centralización
mean(x) #sum(x)/length(x)
median(x)
mfv(x)
quantile(x)

# Medidas de dispersión
var(x) # varianza muestral
sd(x) # desviación típica
cv(x)

# Medidas de asimetría
skewness(x) # Asimetría de Fisher, permite saber la forma de nuestros datos
kurtosis(x)

par(mfrow = c(1, 1))
hist(x)

# Asimetría positivia -> Media por encima del 50%
