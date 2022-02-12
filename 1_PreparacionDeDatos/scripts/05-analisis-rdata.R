clientes <- c("Carlos", "Manuel", "Luis")
# Guardamos data tipo fecha
fechas <- as.Date(c("2018-11-25", "2018-11-5", "2018-4-2")) #Notación anglosajona
pago <- c(250, 88.52, 174.99)
pedidos <- data.frame(clientes, fechas, pago)

# Guardamos uno o más objetos de R
save(pedidos, file = "1_PreparacionDeData/data/pedidos.Rdata")

# Guardamos únicamente un objeto de R
saveRDS(pedidos, file = "1_PreparacionDeData/data/pedidos.rds")

# Limpieza de variables
remove(pedidos)

# Carga de ficheros Rdata y rds
load("1_PreparacionDeData/data/pedidos.Rdata")

# Para la carga de rds, debemos crear la variable donde almacenaremos la data
orders_rds <- readRDS("1_PreparacionDeData/data/pedidos.rds")

# Cargamos un dataset que viene por defecto en R
data(iris)
data(cars)

# Guardamos todos los objetos de la sesión
save.image(file = "1_PreparacionDeData/data/alldata.Rdata")

# Guardamos objetos de manera selectiva
primes <- c(2, 3, 5, 7, 11, 13)
pow2 <- c(2, 4, 8, 16, 32, 64, 128)

# Guardamos varios objeto Rdata (serialización)
save(list = c("primes", "pow2"), file = "1_PreparacionDeData/data/primes_and_pow2.Rdata")

# Cargamos objetos que ya estan cargados en el entorno ¡CUIDADO!
attach("1_PreparacionDeData/data/primes_and_pow2.Rdata")

# Datasets disponibles
data()

