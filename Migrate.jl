#Script para migrar información de las series de tiempo conjeturadas a la tabla CTD
using  CSV, DataFrames, Dates

abreviaturas_entidades = ["AGU", "BCN", "BCS", "CAM", "CHP", "CHH", "CMX", "COA", "COL", "DUR", "GUA", "GRO", "HID", "JAL", "MIC", "MOR", "MEX", "NAY", "NLE", "OAX", "PUE", "QUE", "ROO", "SLP", "SIN", "SON", "TAB", "TAM", "TLA", "VER", "YUC", "ZAC"]

#Cálculo de los números de tipos de casos por estado a partir de las series de tiempo conjeturadas para construir la tabla resumen.
function tipo_casos(datos, abreviatura_estado)

    #El número total de casos sospechosos en el estado:
    sospechosos = datos[!, Symbol(abreviatura_estado*"_S")][end]
    #El número total de casos confirmados en el estado:
    positivos = datos[!, Symbol(abreviatura_estado*"_P")][end]
    #El número total de casos confirmados fallecidos en el estado:
    fallecidos = datos[!, Symbol(abreviatura_estado*"_PF")][end]

    return [sospechosos, missing, missing, positivos, missing, fallecidos]
end

#Actualiza la tabla cumulativa del día a partir de la fecha y los datos de las series de tiempo conjeturadas.
function fila_actualización()

    if Time(now()) < Time(19)
        fecha = today() - Day(1)
    else
        fecha = today()
    end

    fecha_string = Dates.format(fecha, "yyyymmdd")

    #Cargamos las series de tiempo
    datos = CSV.read("Open_data/Time_series/$(fecha_string[1:6])/Mexico_COVID19_$fecha_string.csv", header = 1, DataFrame)

    #Calcula los casos de cada estado
    casos_estados = map(estado -> tipo_casos(datos, estado), abreviaturas_entidades)

    #Calcula los casos en el país
    acumulado_país = sum(casos_estados)

    #Calcula el número total de muestras analizadas.
    total_tests = acumulado_país[4] + missing
    #Genera un vector con el número de casos positivos importados, locales, total de casos; positivos reportados, sospechosos reportados, negativos reportados, número total de pruebas, número de casos recuperados y número de casos fallecidos (para mantener el orden de la tabla original):
    reporte_país = [acumulado_país[1:4]..., missing, missing, missing, missing, total_tests, acumulado_país[5:6]...]

    #Genera la fila de datos del día correspondiente:
    fila = string.(vcat(casos_estados..., reporte_país))

    #Agrega la fecha a la primer columna:
    pushfirst!(fila, string(fecha))

    #Agrega comas para el csv y lo junta todo en un string
    fila_csv = prod(fila[1:(end - 1)].*",")*fila[end]

    #Elimina los missing (para que quede el espacio vacío)
    fila_csv = replace(fila_csv, r"missing" => "")

    #Agrega el resultado al csv acumulativo:
    open("Mexico_COVID19_CTD.csv", "a") do io

        write(io, fila_csv*"\n")
    end

    return "Done"
end

fila_actualización()
