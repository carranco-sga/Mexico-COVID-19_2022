# Archivo de los Comunicados Técnicos Diarios y tablas de casos relacionadas / Archive of the Daily Technical Communiqué and related cases tables.

En este directorio se archivan los Comunicados Técnicos Diarios (CTDs) originales y las tablas `.csv` de los datos provenientes de los mismos.

In this folder we archive the Daily Technical Communiqués (CTDs, by their acronym in Spanish) as well as the tables of their data in `.csv` format.

# Descripción de la tabla resumen/Description of the briefing table.

## Español
Información de casos de COVID-19 dada a conocer por el Gobierno Federal de México desglosada por entidad.

La información es extraída de los Comunicados Técnicos Diarios (CTD) publicados por la Secretaría de Salud Federal.

Los datos por día y estado están contenidos en ```Mexico_COVID19_CTD.csv```.
Las columnas están nombradas de acuerdo al siguiente formato: ```EDO_{key}```. ```EDO``` es el [código ISO de tres letras del estado](https://www.iso.org/obp/ui/#iso:code:3166:MX). ```key``` puede tener los siguientes valores:

- ```S```: representa el número total de casos sospechosos en el estado.
- *Deprecado desde el 2020-04-08. Ver Notes.md* ```I```: representa el número de casos confirmados(°) importados del extranjero al estado.
- *Deprecado desde el 2020-04-08. Ver Notes.md* ```L```: representa el número de casos confirmados locales dados en el estado.
- *ninguno*: representa el número total de casos confirmados en el estado.
- *Deprecado desde el 2020-03-23. Ver Notes.md* ```R```: representa el número total de casos confirmados recuperados(°°) en el estado. No se publica información del número por estado desde el 23 de Marzo.
- ```D```: representa el número total de casos confirmados fallecidos en el estado.

Adicionalmente,  se tienen las siguientes columnas:

- ```Fecha```: fecha dada en formato ISO.
- ```Susp```: representa el número total de casos sospechosos en el país. (Difiere en uno de la cuenta oficial el 23 de marzo debido a que el paciente 576 no tiene datos de entidad ni localidad registrados.)
- ```Pos_I```: es el número total de casos confirmados importados del extranjero al país. (Suma de las columnas ```EDO_I```.)
- ```Pos_L```: es el número total de casos confirmados locales dados en el país. (Suma de las columnas ```EDO_L```.)
- ```Pos```: es el número total de casos confirmados en el país, independientemente de su origen. (Suma de las columnas ```EDO_I``` y ```EDO_L```.) (Difiere en una unidad del valor oficial dado entre el 11 y el 13 de marzo debido a que en las listas oficiales el caso de Sinaloa recuperado se dejó de contabilizar, para volverse a listar a partir del 14 de marzo, igual que con los demás casos recuperados.)
- ```Pos_rep```: es el número total de casos confirmados en el país, independientemente de su origen, reportados oficialmente. ( *Confirmados* en el CTD.)
- ```Susp_rep```: es el número total de casos sospechosos en el país, reportados oficialmente. ( *Sospechosos* en el CTD.)
- ```Neg_rep```: es el número total de casos descartados (por laboratorio) en el país, reportados oficialmente. ( *Negativos* en el CTD.)
- ```IRAG_Test```: **No reportado desde el 2020-04-03** es el número total de muestras de pacientes al azar(°°°) cuya muestra fue analizada en busca de SARS-CoV-2. (Reportado en el CTD a partir del 25 de febrero, anunciado el 23 de febrero.)
- ```Tested_total```: es el número total de pruebas realizadas *con resultado* en el país, según datos oficiales. (Suma de las columnas ```Pos``` y ```Neg_rep```.)
- ```Recovered```: es el número total de casos confirmados recuperados en el país. (Suma de las columnas ```EDO_R```.)
No hay números exactos reportados a partir del 23 de marzo.
- ```Deceased```: es el número total de casos confirmados fallecidos en el país. (Suma de las columnas ```EDO_D```.)

(°) Caso confirmado consiste en un paciente cuya muestra resultó positiva a la búsqueda de SARS-CoV-2. (No es del todo claro en los datos oficiales si estos incluyen el caso de portadores que se mencionan en los CTD. El incremento en las cifras (y el listado del primer portador en la lista de casos oficiales) parece sugerir que sí es el caso.)

(°°) Caso recuperado consiste en un paciente que no presenta sintomatología y cuya segunda muestra ha dado negativo a la presencia de SARS-CoV-2.

(°°°) Pacientes no sospechosos de COVID-19 (i.e. que visitaron un país con tranmisión comunitaria activa y presentan sintomatología o que son contactos de pacientes con COVID-19) con sintomatología de enfermedad respiratoria aguda de etiología desconocida analizada al azar para detección de SARS-CoV-2.
(Nota: Esta definición cambió desde al menos el 23 de marzo; el número de estas pruebas se ha mantenido constante desde el 11 de marzo.)

### Notas:

- Los casos sospechosos sí se han presentado desglosados por entidad, sin embargo, a partir del 29 de febrero y hasta el 13 de marzo, no se cuentan con las tablas en las que se desglosan.
- La cuenta de casos locales difiere de la oficial en uno dado a que en algunos CTD un paciente se registra como "Contacto/Cuba" o "Contacto". Se elige reportarlo en esta base de datos como "Contacto" (Local).
- Notas sobre fechas específicas se encuentran en el documento `CTD/Notes.md`

## English

Information of cases of COVID-19 distributed by the Mexican Federal Government reported by state.

The information is extracted of the Daily Technical Communiqués (CTD by its acronym in Spanish) published by the Federal Health Secretariat.

The data by day and state are contained in ```Mexico_COVID19_CTD.csv```.

The columns are named according to the following format: ```EDO_{key}```. ```EDO``` is the [three-letter ISO code for the state](https://www.iso.org/obp/ui/#iso:code:3166:MX). ```key``` takes the following values:

- ```S```: represents the total number of suspect cases in the state.
- *Deprecated from 2020-04-08 onwards. Cf. Notes.md* ```I```: represents the number of confirmed(°) cases, imported from abroad to the state.
- *Deprecated from 2020-04-08 onwards. Cf. Notes.md* ```L```: represents the number of confirmed local cases in the state.
- *none*: represents the total number of cases in the state.
- *Deprecated from 2020-03-23 onwards. Cf. Notes.md* ```R```: represents the number of confirmed cases that have recovered(°°) in the state. No information about the number of recovered cases per state is published from March 23 onwards.
- ```D```: represents the number of confirmed cases that have died in the state.

Aditionally, we have the following columns:

- ```Fecha```: date given in ISO format.
- ```Susp```: is the total number of suspect cases in the country. (It differs in one from the official tally on March 23 because patient 576 has no state or municipality registered.)
- ```Pos_I```:  is the total number of confirmed cases, imported from abroad into the country. (Sum of the ```EDO_I``` columns.)
- ```Pos_L```: is the total number of confirmed local cases. (Sum of the ```EDO_L``` columns.)
- ```Pos```: is the total number of confirmed cases in the country, independent of their origin. (Sum of the ```EDO_I``` and ```EDO_L``` columns.) (It differs from the official number of cases in the country by a unit from March 11 to March 13 because the official tally doesn't include the recovered case in Sinaloa on this period. It is again included after March 14, along all other recovered cases.)
- ```Pos_rep```: is the total number of officially reported confirmed cases in the country, independent of their origin. ( *Confirmados* in the CTD.)
- ```Susp_rep```: is the total number of officially suspected cases in the country. ( *Sospechosos* in the CTD.)
- ```Neg_rep```: is the total number of officially discarded (negative lab test) cases in the country. ( *Negativos* in the CTD.)
- ```IRAG_Test```: **no longer reported (2020-04-03)** is the total number of samples from random patients(°°°) whose sample was tested for SARS-CoV-2. (Reported in the CTD from February 25 onwards, announced on February 23.)
- ```Tested_total```: is the total number of tests *with results* done in the country, according to official data. (Sum of the ```Pos```, and ```Neg_rep``` columns.)
- ```Recovered```: is the total number of confirmed recovered cases in the country. (Sum of the ```EDO_R``` columns.)
No exact number of recovered patients has been reported from March 23 onwards.
- ```Deceased```: is the total number of confirmed deceased cases in the country. (Sum of the ```EDO_D``` columns.)

(°) A confirmed case consists in a patient whose sample tested positive for SARS-CoV-2. (It isn't fully clear in the official data if these numbers contain asymptomatic carriers (*portadores*) mentioned in the CTD. The increase in the numbers (and that the first carrier was listed in the official case list) suggests the numbers do reflect the mentioned carriers.)

(°°) A recovered case consists in a patient that no longer displays symptoms and whose second sample has tested negative for SARS-CoV-2.

(°°°) Non-suspicious patients for COVID-19 (i.e. that visited a country with active community transmission and present symptoms or that are contacts of patients with COVID-19) with acute respiratory illness with unknown etiology randomly screened for SARS-CoV-2.
(Note: This definition was changed since at least March 23; the number of these tests has been the same since March 11.)

### Notes:

- Suspect cases have been presented by state, however, from February 29 until March 13, we don't have the tables in which they are detailed.
- The count of local cases differs from the official one in one because in some of the CTD a patient is registered as "Contacto/Cuba" or "Contacto". We report them as "Contact" (local) in this database.
- Notes on specific dates are available in `CTD/Notes.md`
