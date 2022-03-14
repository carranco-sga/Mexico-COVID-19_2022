# Notas para los CTD/Notes for the CTDs:

## 2020-07-07

A partir de hoy, 2020-07-07, el CTD incluye gráficas de casos fatales, sospechosos y positivos desglosadas por estados que se presentaban en las conferencias diarias.

From today on, 2020-07-07, the CTD includes graphs of fatal, suspect and positive cases per state that were presented in the daily press briefings.

## 2020-05-24

- El número de muertes en Morelos reportado el día de hoy en los datos del CTD es dos unidades menor al reportado ayer.

- The number of deaths in Morelos reported today in the CTD is two units less than the one reported yesterday.


## 2020-05-06

Dada una observación (realizada el 17 de abril) sobre la forma en la que reporté el número total de pruebas realizadas en la tabla resumen cuando el CTD y sus tablas eran la fuente principal de información, hice una ligera modificación en la descripción del campo `Tested_total`. Efectivamente es el número total de casos con prueba de laboratorio con resultado.
*Muchas gracias a Covid Mexico por su observación*
(Y una muy tardía disculpa por el tiempo que me tomó poder atender la observación.)

Due to an observation (done on April 17) on the way I reported the total number of tests done in the briefing table when the CTD and their accopanying tables were the main source of infomation, I did a slight modification in the description of the field `Tested_total`.
It is, effectively, the total number of cases with a conclusive lab test.
*Special thanks to Covid Mexico for their observation*
(And a very tardy apology for the time it took me to address this observation.)

## 2020-05-05

### Nota respecto a los datos de 2020-04-14.
La base de datos abiertos de esta fecha al parecer contiene registrados más casos negativos que los reportados en el CTD.
Sin embargo, el número de casos positivos y sospechosos parece concordar.
Mario Romero [explica](https://github.com/mariorz/covid19-mx-time-series/wiki/Incidentes-encontrados-en-la-base-de-datos-DGE%E2%80%93COVID19) esto más a detalle.
*Gracias a Mario Romero por su comentario.*
(Una disculpa a todos por la tardanza en hacer la nota.)

### Note regarding 2020-04-14's data.
The open database of this date apparently registers more negative cases than those reported in the CTD.
However, the number of positive and suspect cases seems to match.
Mario Romero [explains](https://github.com/mariorz/covid19-mx-time-series/wiki/Incidentes-encontrados-en-la-base-de-datos-DGE%E2%80%93COVID19) this more thoroughly.
*Thanks to Mario Romero for his comment.*
(A sincere apology to all for the delay in registering this note.)

## 2020-05-03

- El número de muertes en Guerrero reportado el día de hoy en los datos del CTD es una unidad menor al reportado ayer.

- The number of deaths in Guerrero reported today in the CTD is one unit less than the one reported yesterday.

## 2020-05-02

- El número de muertes en Hidalgo reportado el día de hoy en los datos del CTD es una unidad menor al reportado ayer.

- The number of deaths in Hidalgo reported today in the CTD is one unit less than the one reported yesterday.

## 2020-04-21

- El CTD hoy vuelve a incluir un mapa semejante al original, pero que contiene los casos "activos" (con fecha de inicio de síntomas durante los últimos 14 días), así como la tabla de número de fallecimientos por estado.
La tabla de fallecimientos se vuelve a transcribir.

- The CTD again includes a map similar to the original one used, but that includes the "active" cases (those that have their initial symptoms date during the last 14 days), as well as the table of number of deaths by state.
The table of deaths is transcribed again.

## 2020-04-20

- El día de ayer (2020-04-19), la SSa no publicó tablas de casos sospechosos ni confirmados, al parecer dado a que se están publicado datos abiertos. (Ver `Open_data`.)
- Yesterday (2020-04-19), the SSa did not publish tables of suspect or confirmed cases. This seems the result of open data being published. (Cf. `Open_data`.)

## 2020-04-16

- Se depreca ```Mexico_COVID19.ods```, se seguirá actualizando el archivo ```Mexico_COVID19.csv```.
Ambas contenían la misma información.

- The ```Mexico_COVID19.ods``` file is deprecated in favor of the ```Mexico_COVID19.csv``` one.
Both contained the same information.

## 2020-04-14

- Existe una discrepancia de una defunción (y por ende un caso positivo) en el estado de Duarango entre el día de ayer y el día de hoy en los Comunicados Técnicos Diarios (y las tablas de casos sospechosos y positivos).

- A inconsistency of one death (and thus one positive case) in Durango between yesterday and today in the Daily Technical Communiqués (and in the respective suspect and positive cases tables).

## 2020-04-13

- La Secretaría de Salud ha publicado un archivo con datos abiertos sobre pacientes con COVID-19 en formato ```.csv```, disponible [aquí](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
A partir de hoy archivaré las versiones de los datos allí contenidos en esta [carpeta](https://github.com/carranco-sga/Mexico-COVID-19/tree/master/Official%20Open%20Data%20Archive).
*Muchas gracias al Dr. Ricardo Cortés Alcalá por ayudar a hacer estos datos públicos.*

- The Health Secretariat has published a file with open data about COVID-19 patients in ```.csv``` format, available [here](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
From now on I'll be archiving the data there published in this [folder](https://github.com/carranco-sga/Mexico-COVID-19/tree/master/Official%20Open%20Data%20Archive).
*Special thanks to Dr. Ricardo Cortés Alcalá for his help in making this data public.*

## 2020-04-11

- Gracias a [@rodrigolece](https://github.com/rodrigolece), se modifican ligeramente las tablas de casos sospechosos y positivos en ```.csv``` para homogeneizar los formatos. Esencialmente se hacen los siguientes cambios:

  - La columna ```Fecha_regreso``` se renombra a ```Fecha_llegada```.
  - Correcciones de ortografía: "POTOSI => POTOSÍ" en las regiones sanitaria de las tablas que las reportan.
  - Cambio de fechas "NA" a strings vacíos.
  - Cambio de "MASCULINO"/"FEMENINO" a "M"/"F" en las tablas de abril, que corresponde con la forma en las que se reportaban esos datos en las tablas de marzo.

  Adicionalmente, mayrop ([1](https://twitter.com/@mayrop), [2](https://www.covid19in.mx/)) [aquí](https://www.covid19in.mx/docs/datos/tablas-casos/normalizacion/fecha/) y Juan Claudio Toledo Roy identifican a los números que aparecen en los campos de fecha son correspondientes a una representación de fechas en Excel en el que el día 1900-01-01 se toma como día 1. ([1](https://support.office.com/en-us/article/datevalue-function-df8b07d4-7761-4a93-bc33-b7471bbff252))
  Sin embargo, este formato considera que el año 1900 es bisiesto, por lo que para tranformar adecuadamente las fechas a partir del 1900-02-28, es requerido restar dos días ([2](https://docs.microsoft.com/en-us/office/troubleshoot/excel/wrongly-assumes-1900-is-leap-year)) para obtener el número correcto de días transcurridos del 1900-01-01.
*Muchas gracias a mayrop y a Juan Claudio Toledo Roy por sus comentarios sobre las fechas y a rodrigolece por sus mejoras al código de scraping.*

- Thanks to the work of [@rodrigolece](https://github.com/rodrigolece), the format of the positive and suspect cases ```.csv``` tables are modified slightly.
Essencially, the following changes were made:

  - The column ```Fecha_regreso``` was renamed to ```Fecha_llegada```.
  - Orthography corrections: "POTOSI => POTOSÍ" in the sanitary region of the cases in the tables that report them.
  - Changes of the "NA" dates to empty strings.
  - Changed "MASCULINO"/"FEMENINO" to "M"/"F" in the April tables, that is the way that the data was reported in the March tables.

Additionally, mayrop ([1](https://twitter.com/@mayrop), [2](https://www.covid19in.mx/)) [here](https://www.covid19in.mx/docs/datos/tablas-casos/normalizacion/fecha/) and Juan Claudio Toledo Roy identified the numbers appearing in the date fields as a way Excel represents dates, in which the day 1900-01-01 was taken as day 1. [1](https://support.office.com/en-us/article/datevalue-function-df8b07d4-7761-4a93-bc33-b7471bbff252)
However, this format considers the year 1900 as a leap year, so to transform correctly the dates from 1900-02-28,
substracting two to the Excel representation gives the number of days between the day represented and 1900-01-01. [2](https://docs.microsoft.com/en-us/office/troubleshoot/excel/wrongly-assumes-1900-is-leap-year)
*Special thanks to mayrop and to Juan Claudio Toledo Roy for their comments on the dates and to rodrigolece for his  improvement to the scraping code.*

## 2020-04-08

- Desde hoy aparentemente ya no se va a reportar la procedencia de los casos.
Ya no se realizará distinción entre casos locales/importados

- From today onwards, it seems that the country of procedence of the cases is no longer reported.
No distinction will be longer imposed in local/imported cases.

## 2020-04-07

- Las tablas de casos del día de ayer (2020-04-06) tienen un formato diferente a las de días pasados.
Se cambió la ortografía (se omitieron acentos), se ocupó "Distrito Federal" en lugar de "Ciudad de México", los países de los casos con antecedentes de viaje tienen sus nombres incompletos o confusos, se eliminó la fecha de importación, entre otras cosas.
Elí Parra ([1](https://twitter.com/elzr/status/1247428446751526913?s=20), [2](https://covidatos.mx/)); Luis G. Canales ([1](https://github.com/LGCO/MEXICO_COVID19_DATA)); Gerardo Mathus ([1](https://covid19.nextia.mx/)); Katia Guzmán Martínez ([1](https://github.com/guzmart/covid19_mex)), entre otros, han señalado la existencia de inconsistencias adicionales en los datos.
Desconozco la razón por la cual se realizaron estos cambios.
Personalmente me he limitado a cambiar la ortografía de las entidades de las tablas para constuir los archivos [```positivos_20200406.csv```](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Daily%20data/202004/positivos_20200406.csv) y [```sospechosos_20200406.csv```](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Daily%20data/202004/sospechosos_20200406.csv) a partir de las tablas originales archivadas [aquí](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Documents/Tablas%20casos/positivos_20200406.pdf) y [aquí](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Documents/Tablas%20casos/sospechosos_20200406.pdf).
Para el análisis de separar casos como locales o importados por estado, mostrado [aqui](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Mexico_COVID19.csv) y [aquí](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Mexico_COVID19.ods), las palabras clave en la columna ```País_fuente``` de la lista de casos positivos usadas para clasificar un caso positivo como local se muestran [aquí](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Scraping/csv_daily_scraping.jl#L10).
*Gracias a Luis G. Canales y a Luis López Martinelli por sus observaciones.*

  - 2020-04-09, **addenda**: Respecto a los datos del día 2020-04-06 en los que existen varias inconsistencias, por William F. Sotomayor ([wfms](https://www.wfms.org/mx-covid19/)) también realiza algunos comentarios al respecto.
  Adicionalmente, identifica los números aleatorios que aparecen en los campos de fechas como errores de "Power Query" de Excel.
  *Gracias a wfms por sus comentarios.*

  - 2020-04-11, **addenda**: Adicionalmente, se me olvidó comentar que hice las siguientes modificaciones a los países de procedencia:
  Reeplacé "Trieste" por "Italia" y "Estados" por "Estados Unidos".

- The cases tables from yesterday (2020-04-06) have a different format from those from other days.
The orthography was changed (accents were ommited), the term "Distrito Federal" (*Federal District*) was used instead of "Ciudad de México" (*Mexico City*), the countries of the cases with history of travel have their names incomplete or used in an inconsistent manner, the date of importation of the case was deleted, among other things.
Elí Parra ([1](https://twitter.com/elzr/status/1247428446751526913?s=20), [2](https://covidatos.mx/)); Luis G. Canales ([1](https://github.com/LGCO/MEXICO_COVID19_DATA)); Gerardo Mathus ([1](https://covid19.nextia.mx/)); Katia Guzmán Martínez ([1](https://github.com/guzmart/covid19_mex)), among others, have commented on the existence of additional inconsistencies in the data.
I don't know the reason behind these changes.
Personally, I have limited myself to change the ortography of the entities in the tables to build the files [```positivos_20200406.csv```](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Daily%20data/202004/positivos_20200406.csv) and [```sospechosos_20200406.csv```](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Daily%20data/202004/sopechosos_20200406.csv) from the original tables archived [here](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Documents/Tablas%20casos/positivos_20200406.pdf) and [here](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Documents/Tablas%20casos/sospechosos_20200406.pdf).
To do the analysis of classifying the positive cases per state as local or imported, shown [here](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Mexico_COVID19.csv) and [here](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Mexico_COVID19.ods)
, the keywords in the column ```País_fuente```of the list of positive cases used to classified a case as local are shown
[here](https://github.com/carranco-sga/Mexico-COVID-19/blob/01a9a953e23c1fa135be3c78e793500604b58eb1/Scraping/csv_daily_scraping.jl#L10).
*Special thanks to Luis G. Canales and to Luis López Martinelli for their observations.*

  - 2020-04-09, **addenda**: Regarding the data of the day 2020-04-06 in which several inconsistencies are found, William F. Sotomayor ([wfms](https://www.wfms.org/mx-covid19/)) also comments about them.
  Additionally, they identify the random numbers that appear on the data fields as errors of "Power Query" of Excel.
  *Thanks wfms for his comments.*

  - 2020-04-11, **addenda**: Additionally, I forgot to comment that I made the following modifications to the countries of procedence:
  I replaced "Trieste" by "Italia" and "Estados" by "Estados Unidos".

## 2020-04-04

- Algunas de las fechas del inicio de síntomas en las tablas oficiales de **casos sospechosos** son sustituidas por números de forma intermitente desde finales de marzo. Esto es reflejado en los archivos ```.csv``` respectivos. Se desconoce el significado de los mismos. *Gracias a Erik Salgado Estrada por su observación.*

- Some of the dates of the onset of symptoms in the official tables of **supect cases** are substituted by numbers intermitently since late March. This is reflected in the respective ```.csv``` files. It's unknown if they mean anything specific. *Special thanks to Erik Salgado Estrada for his observation*.

## 2020-04-03

- El comunicado técnico diario ya no reporta el número de pruebas de SISVEFLU/IRAG para SARS-CoV-2. Se deja de reportar este dato. El número de pruebas totales consiste en el número de casos positivos más el número de casos negativos.

- The daily technical communiqué no longer reports the number of SISVEFLU/IRAG tests for SARS-CoV-2. This datum will no longer be reported. The number of total tests done consists on the number of total positive cases plus the number of negative cases.

## 2020-03-29

- El número de pruebas realizadas en el país se corrigió retroactivamente para no incluir casos sospechosos, puesto que no se conoce con certeza si en realidad les fueron realizadas pruebas de laboratorio. Ahora sólo consiste de la suma del número de casos positivos con el número de casos negativos y las pruebas de SISVEFLU/IRAG para SARS-CoV-2. *Gracias a Luis López Martinelli por su observación*.

- The number of total tests done in the country was retroactively changed as to not include suspect cases, because it is not known certainly if they were lab-tested. The number currently is the sum of the number of positive cases with the number of negative cases and the random tests of samples coming from SISVEFLU/IRAG for SARS-CoV-2. *Special thanks to Luis López Martinelli  for his observation*.

## 2020-03-23

- Los casos recuperados ya no se listan en el CTD desde el 2020-03-23.
**La situación de cada paciente (recuperado/fallecido) no será actualizada a partir del 2020-03-23.**

- Recovered cases are no longer  provided in the CTD for 2020-03-23 onwards.
***No* particular patient status (recovered/deceased) will be updated after 2020-03-23.**

## 2020-03-19

- La cuenta de casos locales difiere de la oficial en uno dado a que en algunos CTD un paciente se registra como "Contacto/Cuba" o "Contacto". Se elige reportarlo en esta base de datos como "Contacto" (Local).
- The count of local cases differs from the official one in one because in some of the CTD a patient is registered as "Contacto/Cuba" or "Contacto". We report them as "Contact" (local) in this database.

## 2020-03-18

- Los casos sospechosos sí se han presentado desglosados por entidad, sin embargo, a partir del 29 de febrero y hasta el 13 de marzo, no se cuentan con las tablas en las que se desglosan.
- Suspect cases have been presented by state, however, from February 29 until March 13, we don't have the tables in which they are detailed.
