# Cargamos nuestro fichero
#stringAsFactors = FALSE -> permite evitar crear variables categ�ricas
data <- read.csv("1_PreparacionDeData/data/auto-mpg.csv", header = TRUE,
                 stringsAsFactors = FALSE)

# Convertimos cualquier columna a categor�a
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


# ESTAD�STICOS Y MEDIDAS B�SICAS

install.packages(c("modeest", "raster", "moments"))
library(modeest) #moda
library(raster) #quantiles, cv
library(moments) #coeficiente de asimetr�a, curtosis

x = data$mpg

# Medidas de centralizaci�n
mean(x) #sum(x)/length(x)
median(x)
mfv(x)
quantile(x)

# Medidas de dispersi�n
var(x) # varianza muestral
sd(x) # desviaci�n t�pica
cv(x)

# Medidas de asimetr�a
skewness(x) # Asimetr�a de Fisher, permite saber la forma de nuestros datos
kurtosis(x)

par(mfrow = c(1, 1))
hist(x)

# Asimetr�a positivia -> Media por encima del 50%
