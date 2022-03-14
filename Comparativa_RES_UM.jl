#Módulos para cargar los datos.
using ZipFile, CSV, DataFrames, Dates

#El directorio de las bases de datos.
cd("Open_data/COVID-19")

#Fijamos la fecha de comparación:
fecha_análisis = today()

#Los datos se encuentran en formato .csv al interior del archivo .zip:
datos_zip = ZipFile.Reader(Dates.format(fecha_análisis, "yyyymm")*"/"*Dates.format(fecha_análisis, "yyyymmdd")*".zip")
#Leemos el zip directamente, con un fix para que el tipo de la columna fechas sea String:
datos = CSV.read(datos_zip.files[1], header = 1, types = Dict(:FECHA_DEF => String))

#Generamos el dataframe con los pacientes con resultado positivo (Cf. diccionario/Catálogos.)
P = filter(row -> row[:RESULTADO] == 1, datos)
#Filtramos por entidad y por ubicación de la unidad médica y de residencia.
P_CMX_UM = filter(row -> row[:ENTIDAD_UM] == 9, P)
P_CMX_RES = filter(row -> row[:ENTIDAD_RES] == 9, P)
P_MEX_UM = filter(row -> row[:ENTIDAD_UM] == 15, P)
P_MEX_RES = filter(row -> row[:ENTIDAD_RES] == 15, P)

#Vemos los tamaños, el número de filas es el primer número:
size.([P_CMX_UM, P_CMX_RES, P_MEX_UM, P_MEX_RES])
