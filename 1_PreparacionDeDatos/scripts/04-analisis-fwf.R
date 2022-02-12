# Cargamos nuestro fichero de ancho fijo
# widths: Tamaño del elemento más grande de la columna
students_data <- read.fwf("1_PreparacionDeData/data/student-fwf.txt",
                          widths = c(4, 15, 20, 15, 4),
                          col.names = c("Id", "Nombre", "Email", "Carrera", "Año"))

# Cargamos un fichero de ancho fijo con cabeceras
# sep: Separador empleado por las cabeceras
# skip: Saltamos las 2 primeras líneas del fichero
students_data_header <- read.fwf("1_PreparacionDeData/data/student-fwf-header.txt",
                                 widths = c(4, 15, 20, 15, 4),
                                 header = TRUE, sep = "\t", skip = 2)

# Cargamos toda la data, a excepción del email
students_data_no_email <- read.fwf("1_PreparacionDeData/data/student-fwf.txt",
                          widths = c(4, 15, -20, 15, 4),
                          col.names = c("Id", "Nombre", "Carrera", "Año"))
