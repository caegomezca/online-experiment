
cd "C:\Users\LENOVO IDEAPAD 510\Documents\Universidad Nacional\Francesco\Experiment two violence"
cd "C:\Users\Usuario\Dropbox\Violence Project\Camilo JAB 2017\Análisis exp 2"
clear all

*import excel "C:\Users\LENOVO IDEAPAD 510\Documents\Universidad Nacional\Francesco\Experiment two violence\Base de datos_sin_nombres.xlsx", sheet("N=827 minu.") firstrow
import excel "Base de datos_sin_nombres.xlsx", sheet("N=827 minu.") firstrow

rename violence_project1playerlocali loc

gen localidad = 1 if loc == "Kenney"
replace localidad = 2 if loc == "Suba"
replace localidad = 3 if loc == "Engativá"
replace localidad = 4 if loc == "Ciudad Bolívar"
replace localidad = 5 if loc == "Bosa"
replace localidad = 6 if loc == "Usaquén"
replace localidad = 7 if loc == "San Cristóbal"
replace localidad = 8 if loc == "Rafael Uribe Uribe"
replace localidad = 9 if loc == "Fontibón"
replace localidad = 10 if loc == "Usme"
replace localidad = 11 if loc == "Puente Aranda"
replace localidad = 12 if loc == "Barrios Unidos"
replace localidad = 13 if loc == "Tunjuelito"
replace localidad = 14 if loc == "Teusaquillo"
replace localidad = 15 if loc == "Chapinero"
replace localidad = 16 if loc == "Antonio Nariño"
replace localidad = 17 if loc == "Santa Fe"
replace localidad = 18 if loc == "Los Mártires"
replace localidad = 19 if loc == "La Candelaria"
replace localidad = 20 if loc == "Fuera de Bogotá"

merge m:1 localidad using basemulti.dta

gen id = _n


*************


reshape long violence_project1playerq violence_project1playerp violence_project1players violence_project1playerm violence_project1playerr, i(id) j(district)

gen income_d = 3258705 if district == 15
replace income_d = 386049 if district == 7
replace income_d = 1931642 if district == 6
replace income_d = 720545 if district == 18
replace income_d = 2076054 if district == 14
replace income_d = 1221299 if district == 12
replace income_d = 1135394 if district == 9
replace income_d = 816460 if district == 17
replace income_d = 782973 if district == 11
replace income_d = 801226 if district == 3
replace income_d = 462660 if district == 8
replace income_d = 353339 if district == 10
replace income_d = 1059765 if district == 2
replace income_d = 636033 if district == 1
replace income_d = 992390 if district == 19
replace income_d = 400662 if district == 5
replace income_d = 710948 if district == 16
replace income_d = 543036 if district == 13
replace income_d = 353195 if district == 4


gen estrato1_d = 17.91 if district == 15
replace estrato1_d = 84.78 if district == 7
replace estrato1_d = 12.02 if district == 6
replace estrato1_d = 8.29 if district == 18
replace estrato1_d = 0 if district == 14
replace estrato1_d = 0 if district == 12
replace estrato1_d = 20.27 if district == 9
replace estrato1_d = 72.66 if district == 17
replace estrato1_d = 0 if district == 11
replace estrato1_d = 26.18 if district == 3
replace estrato1_d = 59.50 if district == 8
replace estrato1_d = 98.22 if district == 10
replace estrato1_d = 37.26 if district == 2
replace estrato1_d = 53.60 if district == 1
replace estrato1_d = 51.59 if district == 19
replace estrato1_d = 92.47 if district == 5
replace estrato1_d = 4.63 if district == 16
replace estrato1_d = 57.50 if district == 13
replace estrato1_d = 95.21 if district == 4

gen desplazados_d = 3 if district == 15
replace desplazados_d = 9.9 if district == 7
replace desplazados_d = 2.6 if district == 6
replace desplazados_d = 14.1 if district == 18
replace desplazados_d = 1 if district == 14
replace desplazados_d = 1.8 if district == 12
replace desplazados_d = 3.1 if district == 9
replace desplazados_d = 9.3 if district == 17
replace desplazados_d = 3.8 if district == 11
replace desplazados_d = 2.9 if district == 3
replace desplazados_d = 8.7 if district == 8
replace desplazados_d = 12.2 if district == 10
replace desplazados_d = 5.4 if district == 2
replace desplazados_d = 6.8 if district == 1
replace desplazados_d = 7.4 if district == 19
replace desplazados_d = 11.4 if district == 5
replace desplazados_d = 3.7 if district == 16
replace desplazados_d = 7.1 if district == 13
replace desplazados_d = 15.5 if district == 4


gen movilidad_d = 21 if district == 15
replace movilidad_d = 14.7 if district == 7
replace movilidad_d = 20.2 if district == 6
replace movilidad_d = 16.5 if district == 18
replace movilidad_d = 18 if district == 14
replace movilidad_d = 17 if district == 12
replace movilidad_d = 17 if district == 9
replace movilidad_d = 15.2 if district == 17
replace movilidad_d = 14.7 if district == 11
replace movilidad_d = 17 if district == 3
replace movilidad_d = 16 if district == 8
replace movilidad_d = 15.2 if district == 10
replace movilidad_d = 20 if district == 2
replace movilidad_d = 20.4 if district == 1
replace movilidad_d = 15.3 if district == 19
replace movilidad_d = 21.9 if district == 5
replace movilidad_d = 22.6 if district == 16
replace movilidad_d = 14 if district == 13
replace movilidad_d = 13 if district == 4


gen education_d = 66 if district == 15
replace education_d = 33.9 if district == 7
replace education_d = 58.9 if district == 6
replace education_d = 42.4 if district == 18
replace education_d = 73.6 if district == 14
replace education_d = 51.3 if district == 12
replace education_d = 52.5 if district == 9
replace education_d = 38.6 if district == 17
replace education_d = 49.8 if district == 11
replace education_d = 49 if district == 3
replace education_d = 33.9 if district == 8
replace education_d = 23.4 if district == 10
replace education_d = 47 if district == 2
replace education_d = 39.5 if district == 1
replace education_d = 52.5 if district == 19
replace education_d = 26.2 if district == 5
replace education_d = 45.5 if district == 16
replace education_d = 38.6 if district == 13
replace education_d = 24.3 if district == 4


gen vivienda_d = 59.9 if district == 15
replace vivienda_d = 41.7 if district == 7
replace vivienda_d = 69.6 if district == 6
replace vivienda_d = 44.5 if district == 18
replace vivienda_d = 61.9 if district == 14
replace vivienda_d = 48.8 if district == 12
replace vivienda_d = 59.8 if district == 9
replace vivienda_d = 45.5 if district == 17
replace vivienda_d = 47 if district == 11
replace vivienda_d = 52.9 if district == 3
replace vivienda_d = 47.1 if district == 8
replace vivienda_d = 45.2 if district == 10
replace vivienda_d = 59.4 if district == 2
replace vivienda_d = 52.8 if district == 1
replace vivienda_d = 37.7 if district == 19
replace vivienda_d = 46.1 if district == 5
replace vivienda_d = 41.7 if district == 16
replace vivienda_d = 40.2 if district == 13
replace vivienda_d = 51.3 if district == 4

gen meanhomicide2013 = 18.6 if district == 1
replace meanhomicide2013 = 9.6 if district == 2
replace meanhomicide2013 = 8.4 if district == 3
replace meanhomicide2013 = 36.6 if district == 4
replace meanhomicide2013 = 18.8 if district == 5
replace meanhomicide2013 = 11.3 if district == 6
replace meanhomicide2013 = 19.2 if district == 7
replace meanhomicide2013 = 25.8 if district == 8
replace meanhomicide2013 = 7.2 if district == 9
replace meanhomicide2013 = 16.7 if district == 10
replace meanhomicide2013 = 9.4 if district == 11
replace meanhomicide2013 = 4.2 if district == 12
replace meanhomicide2013 = 13.1 if district == 13
replace meanhomicide2013 = 8.4 if district == 14
replace meanhomicide2013 = 8.1 if district == 15
replace meanhomicide2013 = 5.5 if district == 16
replace meanhomicide2013 = 41.8 if district == 17
replace meanhomicide2013 = 49.8 if district == 18
replace meanhomicide2013 = 2.0 if district == 19

gen homicide2017 = 10.2 if district == 1
replace homicide2017 = 7.2 if district == 2
replace homicide2017 = 8.1 if district == 3
replace homicide2017 = 29.3 if district == 4
replace homicide2017 = 17.2 if district == 5
replace homicide2017 = 7.8 if district == 6
replace homicide2017 = 18.8 if district == 7
replace homicide2017 = 30.5 if district == 8
replace homicide2017 = 4.8 if district == 9
replace homicide2017 = 24.4 if district == 10
replace homicide2017 = 12.6 if district == 11
replace homicide2017 = 3.7 if district == 12
replace homicide2017 = 16 if district == 13
replace homicide2017 = 5 if district == 14
replace homicide2017 = 7.9 if district == 15
replace homicide2017 = 11 if district == 16
replace homicide2017 = 42 if district == 17
replace homicide2017 = 60.8 if district == 18
replace homicide2017 = 26.7 if district == 19

***************************************************

gen alto1 = 1 if violence_project1playerd1a == "Kennedy"
replace alto1 = 2 if violence_project1playerd1a == "Suba"
replace alto1 = 3 if violence_project1playerd1a == "Engativá"
replace alto1 = 4 if violence_project1playerd1a == "Ciudad Bolívar"
replace alto1 = 5 if violence_project1playerd1a == "Bosa"
replace alto1 = 6 if violence_project1playerd1a == "Usaquén"
replace alto1 = 7 if violence_project1playerd1a == "San Cristóbal"
replace alto1 = 8 if violence_project1playerd1a == "Rafael Uribe Uribe"
replace alto1 = 9 if violence_project1playerd1a == "Fontibón"
replace alto1 = 10 if violence_project1playerd1a == "Usme"
replace alto1 = 11 if violence_project1playerd1a == "Puente Aranda"
replace alto1 = 12 if violence_project1playerd1a == "Barrios Unidos"
replace alto1 = 13 if violence_project1playerd1a == "Tunjuelito"
replace alto1 = 14 if violence_project1playerd1a == "Teusaquillo"
replace alto1 = 15 if violence_project1playerd1a == "Chapinero"
replace alto1 = 16 if violence_project1playerd1a == "Antonio Nariño"
replace alto1 = 17 if violence_project1playerd1a == "Santa Fe"
replace alto1 = 18 if violence_project1playerd1a == "Los Mártires"
replace alto1 = 19 if violence_project1playerd1a == "La Candelaria"


gen alto2 = 1 if violence_project1playerd1b == "Kennedy"
replace alto2 = 2 if violence_project1playerd1b == "Suba"
replace alto2 = 3 if violence_project1playerd1b == "Engativá"
replace alto2 = 4 if violence_project1playerd1b == "Ciudad Bolívar"
replace alto2 = 5 if violence_project1playerd1b == "Bosa"
replace alto2 = 6 if violence_project1playerd1b == "Usaquén"
replace alto2 = 7 if violence_project1playerd1b == "San Cristóbal"
replace alto2 = 8 if violence_project1playerd1b == "Rafael Uribe Uribe"
replace alto2 = 9 if violence_project1playerd1b == "Fontibón"
replace alto2 = 10 if violence_project1playerd1b == "Usme"
replace alto2 = 11 if violence_project1playerd1b == "Puente Aranda"
replace alto2 = 12 if violence_project1playerd1b == "Barrios Unidos"
replace alto2 = 13 if violence_project1playerd1b == "Tunjuelito"
replace alto2 = 14 if violence_project1playerd1b == "Teusaquillo"
replace alto2 = 15 if violence_project1playerd1b == "Chapinero"
replace alto2 = 16 if violence_project1playerd1b == "Antonio Nariño"
replace alto2 = 17 if violence_project1playerd1b == "Santa Fe"
replace alto2 = 18 if violence_project1playerd1b == "Los Mártires"
replace alto2 = 19 if violence_project1playerd1b == "La Candelaria"

gen bajo1 = 1 if violence_project1playerd2a == "Kennedy"
replace bajo1 = 2 if violence_project1playerd2a == "Suba"
replace bajo1 = 3 if violence_project1playerd2a == "Engativá"
replace bajo1 = 4 if violence_project1playerd2a == "Ciudad Bolívar"
replace bajo1 = 5 if violence_project1playerd2a == "Bosa"
replace bajo1 = 6 if violence_project1playerd2a == "Usaquén"
replace bajo1 = 7 if violence_project1playerd2a == "San Cristóbal"
replace bajo1 = 8 if violence_project1playerd2a == "Rafael Uribe Uribe"
replace bajo1 = 9 if violence_project1playerd2a == "Fontibón"
replace bajo1 = 10 if violence_project1playerd2a == "Usme"
replace bajo1 = 11 if violence_project1playerd2a == "Puente Aranda"
replace bajo1 = 12 if violence_project1playerd2a == "Barrios Unidos"
replace bajo1 = 13 if violence_project1playerd2a == "Tunjuelito"
replace bajo1 = 14 if violence_project1playerd2a == "Teusaquillo"
replace bajo1 = 15 if violence_project1playerd2a == "Chapinero"
replace bajo1 = 16 if violence_project1playerd2a == "Antonio Nariño"
replace bajo1 = 17 if violence_project1playerd2a == "Santa Fe"
replace bajo1 = 18 if violence_project1playerd2a == "Los Mártires"
replace bajo1 = 19 if violence_project1playerd2a == "La Candelaria"

gen bajo2 = 1 if violence_project1playerd2b == "Kennedy"
replace bajo2 = 2 if violence_project1playerd2b == "Suba"
replace bajo2 = 3 if violence_project1playerd2b == "Engativá"
replace bajo2 = 4 if violence_project1playerd2b == "Ciudad Bolívar"
replace bajo2 = 5 if violence_project1playerd2b == "Bosa"
replace bajo2 = 6 if violence_project1playerd2b == "Usaquén"
replace bajo2 = 7 if violence_project1playerd2b == "San Cristóbal"
replace bajo2 = 8 if violence_project1playerd2b == "Rafael Uribe Uribe"
replace bajo2 = 9 if violence_project1playerd2b == "Fontibón"
replace bajo2 = 10 if violence_project1playerd2b == "Usme"
replace bajo2 = 11 if violence_project1playerd2b == "Puente Aranda"
replace bajo2 = 12 if violence_project1playerd2b == "Barrios Unidos"
replace bajo2 = 13 if violence_project1playerd2b == "Tunjuelito"
replace bajo2 = 14 if violence_project1playerd2b == "Teusaquillo"
replace bajo2 = 15 if violence_project1playerd2b == "Chapinero"
replace bajo2 = 16 if violence_project1playerd2b == "Antonio Nariño"
replace bajo2 = 17 if violence_project1playerd2b == "Santa Fe"
replace bajo2 = 18 if violence_project1playerd2b == "Los Mártires"
replace bajo2 = 19 if violence_project1playerd2b == "La Candelaria"



gen phigh = 0
replace phigh = 1 if district == alto1 
replace phigh = 1 if district == alto2

gen plow = 0
replace plow = 1 if district == bajo1 
replace plow = 1 if district == bajo2

gen HETV2013 = 0
replace HETV2013 = 1 if district == 4
replace HETV2013 = 1 if district == 8 
replace HETV2013 = 1 if district == 19 
replace HETV2013 = 1 if district == 11
replace HETV2013 = 1 if district == 2
replace HETV2013 = 1 if district == 16
replace HETV2013 = 1 if district == 14
replace HETV2013 = 1 if district == 12
replace HETV2013 = 1 if district == 18
replace HETV2013 = 1 if district == 3
replace HETV2013 = 1 if district == 13

gen HETV2017 = 0
replace HETV2017 = 1 if district == 2
replace HETV2017 = 1 if district == 4 
replace HETV2017 = 1 if district == 8 
replace HETV2017 = 1 if district == 9
replace HETV2017 = 1 if district == 11
replace HETV2017 = 1 if district == 12
replace HETV2017 = 1 if district == 15
replace HETV2017 = 1 if district == 16
replace HETV2017 = 1 if district == 18
replace HETV2017 = 1 if district == 19


gen samelochigh = 0
replace samelochigh = 1 if localidad == alto1
replace samelochigh = 1 if localidad == alto2

gen sameloclow = 0
replace sameloclow = 1 if localidad == bajo1
replace sameloclow = 1 if localidad == bajo2


gen word_violence = 0
replace word_violence = 1 if violence_project1playerm == "inseguro"
replace word_violence = 1 if violence_project1playerm == "delincuencia"
replace word_violence = 1 if violence_project1playerm == "robo"
replace word_violence = 1 if violence_project1playerm == "peligrosa"
replace word_violence = 1 if violence_project1playerm == "peligro"
replace word_violence = 1 if violence_project1playerm == "peligroso"
replace word_violence = 1 if violence_project1playerm == "robos"
replace word_violence = 1 if violence_project1playerm == "drogas"
replace word_violence = 1 if violence_project1playerm == "crimen"
replace word_violence = 1 if violence_project1playerm == "violencia"
replace word_violence = 1 if violence_project1playerm == "insegura"
replace word_violence = 1 if violence_project1playerm == "bronx"
replace word_violence = 1 if violence_project1playerm == "ladrones"
replace word_violence = 1 if violence_project1playerm == "pandillas"
replace word_violence = 1 if violence_project1playerm == "carcel"
replace word_violence = 1 if violence_project1playerm == "criminalidad"
replace word_violence = 1 if violence_project1playerm == "inseguro"
replace word_violence = 1 if violence_project1playerm == "inseguridad"
replace word_violence = 1 if violence_project1playerm == "ñero"
replace word_violence = 1 if violence_project1playerm == "hurto"
replace word_violence = 1 if violence_project1playerm == "inseguro"
replace word_violence = 1 if violence_project1playerr == "inseguro"
replace word_violence = 1 if violence_project1playerr == "delincuencia"
replace word_violence = 1 if violence_project1playerr == "robo"
replace word_violence = 1 if violence_project1playerr == "peligrosa"
replace word_violence = 1 if violence_project1playerr == "peligro"
replace word_violence = 1 if violence_project1playerr == "peligroso"
replace word_violence = 1 if violence_project1playerr == "robos"
replace word_violence = 1 if violence_project1playerr == "drogas"
replace word_violence = 1 if violence_project1playerr == "crimen"
replace word_violence = 1 if violence_project1playerr == "violencia"
replace word_violence = 1 if violence_project1playerr == "insegura"
replace word_violence = 1 if violence_project1playerr == "bronx"
replace word_violence = 1 if violence_project1playerr == "ladrones"
replace word_violence = 1 if violence_project1playerr == "pandillas"
replace word_violence = 1 if violence_project1playerr == "carcel"
replace word_violence = 1 if violence_project1playerr == "criminalidad"
replace word_violence = 1 if violence_project1playerr == "inseguro"
replace word_violence = 1 if violence_project1playerr == "inseguridad"
replace word_violence = 1 if violence_project1playerr == "ñero"
replace word_violence = 1 if violence_project1playerr == "hurto"
replace word_violence = 1 if violence_project1playerr == "inseguro"

gen word_distance = 0
replace word_distance = 1 if violence_project1playerm == "grande"
replace word_distance = 1 if violence_project1playerm == "central"
replace word_distance = 1 if violence_project1playerm == "norte"
replace word_distance = 1 if violence_project1playerm == "lejanía"
replace word_distance = 1 if violence_project1playerm == "lejano"
replace word_distance = 1 if violence_project1playerm == "lejos"
replace word_distance = 1 if violence_project1playerm == "occidente"
replace word_distance = 1 if violence_project1playerm == "sur"
replace word_distance = 1 if violence_project1playerm == "oriente"
replace word_distance = 1 if violence_project1playerm == "cerca"
replace word_distance = 1 if violence_project1playerm == "centro"
replace word_distance = 1 if violence_project1playerm == "lejania"
replace word_distance = 1 if violence_project1playerm == "pequeño"
replace word_distance = 1 if violence_project1playerm == "salida"
replace word_distance = 1 if violence_project1playerm == "salitre"
replace word_distance = 1 if violence_project1playerm == "lejana"
replace word_distance = 1 if violence_project1playerm == "montañas"
replace word_distance = 1 if violence_project1playerm == "alto"
replace word_distance = 1 if violence_project1playerm == "distancia"
replace word_distance = 1 if violence_project1playerm == "alejado"
replace word_distance = 1 if violence_project1playerm == "periferia"

replace word_distance = 1 if violence_project1playerr == "grande"
replace word_distance = 1 if violence_project1playerr == "central"
replace word_distance = 1 if violence_project1playerr == "norte"
replace word_distance = 1 if violence_project1playerr == "lejanía"
replace word_distance = 1 if violence_project1playerr == "lejano"
replace word_distance = 1 if violence_project1playerr == "lejos"
replace word_distance = 1 if violence_project1playerr == "occidente"
replace word_distance = 1 if violence_project1playerr == "sur"
replace word_distance = 1 if violence_project1playerr == "oriente"
replace word_distance = 1 if violence_project1playerr == "cerca"
replace word_distance = 1 if violence_project1playerr == "centro"
replace word_distance = 1 if violence_project1playerr == "lejania"
replace word_distance = 1 if violence_project1playerr == "pequeño"
replace word_distance = 1 if violence_project1playerr == "salida"
replace word_distance = 1 if violence_project1playerr == "salitre"
replace word_distance = 1 if violence_project1playerr == "lejana"
replace word_distance = 1 if violence_project1playerr == "montañas"
replace word_distance = 1 if violence_project1playerr == "alto"
replace word_distance = 1 if violence_project1playerr == "distancia"
replace word_distance = 1 if violence_project1playerr == "alejado"
replace word_distance = 1 if violence_project1playerr == "periferia"

gen word_income = 0
replace word_income = 1 if violence_project1playerm == "norte"
replace word_income = 1 if violence_project1playerm == "comercial"
replace word_income = 1 if violence_project1playerm == "industrial"
replace word_income = 1 if violence_project1playerm == "bonito"
replace word_income = 1 if violence_project1playerm == "dinero"
replace word_income = 1 if violence_project1playerm == "ricos"
replace word_income = 1 if violence_project1playerm == "trabajo"
replace word_income = 1 if violence_project1playerm == "riqueza"
replace word_income = 1 if violence_project1playerm == "desigualdad"
replace word_income = 1 if violence_project1playerm == "pobreza"
replace word_income = 1 if violence_project1playerm == "indigencia"
replace word_income = 1 if violence_project1playerm == "invasión"
replace word_income = 1 if violence_project1playerm == "costoso"
replace word_income = 1 if violence_project1playerm == "caro"
replace word_income = 1 if violence_project1playerm == "humildad"
replace word_income = 1 if violence_project1playerm == "agradable"
replace word_income = 1 if violence_project1playerm == "barato"
replace word_income = 1 if violence_project1playerm == "pobres"
replace word_income = 1 if violence_project1playerm == "estrato"
replace word_income = 1 if violence_project1playerm == "inequidad"
replace word_income = 1 if violence_project1playerm == "plata"

replace word_income = 1 if violence_project1playerr == "norte"
replace word_income = 1 if violence_project1playerr == "comercial"
replace word_income = 1 if violence_project1playerr == "industrial"
replace word_income = 1 if violence_project1playerr == "bonito"
replace word_income = 1 if violence_project1playerr == "dinero"
replace word_income = 1 if violence_project1playerr == "ricos"
replace word_income = 1 if violence_project1playerr == "trabajo"
replace word_income = 1 if violence_project1playerr == "riqueza"
replace word_income = 1 if violence_project1playerr == "desigualdad"
replace word_income = 1 if violence_project1playerr == "pobreza"
replace word_income = 1 if violence_project1playerr == "indigencia"
replace word_income = 1 if violence_project1playerr == "invasión"
replace word_income = 1 if violence_project1playerr == "costoso"
replace word_income = 1 if violence_project1playerr == "caro"
replace word_income = 1 if violence_project1playerr == "humildad"
replace word_income = 1 if violence_project1playerr == "agradable"
replace word_income = 1 if violence_project1playerr == "barato"
replace word_income = 1 if violence_project1playerr == "pobres"
replace word_income = 1 if violence_project1playerr == "estrato"
replace word_income = 1 if violence_project1playerr == "inequidad"
replace word_income = 1 if violence_project1playerr == "plata"

xtset id district

rename violence_project1playerage age
gen female = 0
replace female = 1 if violence_project1playergender == "Femenino"

rename violence_project1playereducat education
rename violence_project1playerhelp help
rename violence_project1playerpercep perc

***********

xtreg phigh female age education word_violence word_distance word_income help perc, re robust
outreg2 using tabla200, word excel replace dec(2) addtext(Individual random effects, YES)
xtreg phigh income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, re robust
outreg2 using tabla200.doc, append dec(2) addtext(Individual random effects, YES)
xtreg phigh female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, re robust
outreg2 using tabla200.doc, append dec(2) addtext(Individual random effects, YES)
xtreg phigh female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, fe robust
outreg2 using tabla200.doc, append dec(2) addtext(Individual fixed effects, YES)


xtreg plow female age education word_violence word_distance word_income help perc, re robust
outreg2 using tabla201, word excel replace dec(2) addtext(Individual random effects, YES)
xtreg plow income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, re robust
outreg2 using tabla201.doc, append dec(2) addtext(Individual random effects, YES)
xtreg plow female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, re robust
outreg2 using tabla201.doc, append dec(2) addtext(Individual random effects, YES)
xtreg plow female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
vivienda_d  homicide2017 word_violence word_distance word_income help perc, fe robust
outreg2 using tabla201.doc, append dec(2) addtext(Individual fixed effects, YES)




replace perc=0 if perc==2

gen insecurity= 10.2 if loc == "Kenney"
replace insecurity = 7.2 if loc == "Suba"
replace insecurity = 8.1 if loc == "Engativá"
replace insecurity = 29.3 if loc == "Ciudad Bolívar"
replace insecurity = 17.2 if loc == "Bosa"
replace insecurity = 7.8 if loc == "Usaquén"
replace insecurity = 18.8 if loc == "San Cristóbal"
replace insecurity = 30.5 if loc == "Rafael Uribe Uribe"
replace insecurity = 4.8 if loc == "Fontibón"
replace insecurity = 24.4 if loc == "Usme"
replace insecurity = 12.6 if loc == "Puente Aranda"
replace insecurity = 3.7 if loc == "Barrios Unidos"
replace insecurity = 16 if loc == "Tunjuelito"
replace insecurity = 5 if loc == "Teusaquillo"
replace insecurity = 7.9 if loc == "Chapinero"
replace insecurity = 11 if loc == "Antonio Nariño"
replace insecurity = 42 if loc == "Santa Fe"
replace insecurity = 60.8 if loc == "Los Mártires"
replace insecurity = 26.7 if loc == "La Candelaria"
replace insecurity =. if loc == "Fuera de Bogotá"

egen median_ins=median(insecurity)
gen itv_etv=insecurity>median_ins
gen in9=perc * itv_etv
gen in10= perc * itv_etv * word_vio
gen in00 = word_vio* perc
gen in01 = word_vio * itv_etv

********


xtreg phigh word_violence word_income word_distance ///
		female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
		vivienda_d  homicide2017 if in9==1, re robust
outreg2 using tabla211, word replace dec(2) addtext(Individual random effects, YES)
xtreg phigh word_violence word_income word_distance ///
		female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
		vivienda_d  homicide2017 if in9==0, re robust
outreg2 using tabla211.doc, append dec(2) addtext(Individual random effects, YES)
xtreg plow word_violence word_income word_distance ///
		female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
		vivienda_d  homicide2017 if in9==1, re robust
outreg2 using tabla211.doc, append dec(2) addtext(Individual random effects, YES)
xtreg plow word_violence word_income word_distance ///
		female age education income_d estrato1_d desplazados_d movilidad_d education_d ///
		vivienda_d  homicide2017 if in9==0, re robust
outreg2 using tabla211.doc, append dec(2) addtext(Individual random effects, YES)
