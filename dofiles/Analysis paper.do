/*====================================================================
Project:        
Dependencies: 
1 Universidad Nacional de Colombia
2 Centro de Investigaciones para el Desarrollo

----------------------------------------------------------------------
Creation Date: 14/07/2020   
Modification Date: 14/07/2020  
Do-file version: 01
References:          
Output: Tables, Graphs and Word analysis
====================================================================*/

/*====================================================================
                        0: Program set up
====================================================================*/

clear all

*Define the working directory
cd "C:\Users\LENOVO IDEAPAD 510\Dropbox\Violence Project\Camilo JAB 2017\Analysis online\Paper_analysis_2020\online-experiment\Data"

*import the database

import excel "Base de datos_sin_nombres.xlsx", sheet("N=827 minu.") firstrow

*gen an id for each participant

gen id = _n

*gen localidad name variable
rename violence_project1playerlocali loc

gen localidad = 1 if loc == "Kennedy"
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

*Merge with Multiproposito database

merge m:1 localidad using basemulti2017.dta

*Reshape data
reshape long violence_project1playerq violence_project1playerp violence_project1players violence_project1playerm violence_project1playerr, i(id) j(district)

*Merge with word classification
drop _merge
merge m:m violence_project1playerm using base_class.dta

rename violence violence_m
rename distance distance_m
rename income income_m
rename poverty poverty_m
rename otra otra_m
rename class class_m

drop _merge

merge m:m violence_project1playerr using base_class.dta
rename violence violence_r
rename distance distance_r
rename income income_r
rename poverty poverty_r
rename otra otra_r
rename class class_r

drop in 15714/18738

/*====================================================================
                   1: Word analysis
====================================================================*/

*generate a variable of selected districts
gen alto1 = 1 if violence_project1playerd1a == "Kennedy"
replace alto1 = 2 if violence_project1playerd1a == "Suba"
replace alto1 = 3 if violence_project1playerd1a == "Engativá"
replace alto1 = 4 if violence_project1playerd1a == "Ciudad Bolivar"
replace alto1 = 5 if violence_project1playerd1a == "Bosa"
replace alto1 = 6 if violence_project1playerd1a == "Usaquén"
replace alto1 = 7 if violence_project1playerd1a == "San Cristóbal"
replace alto1 = 8 if violence_project1playerd1a == "Rafael Uribe"
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
replace alto2 = 4 if violence_project1playerd1b == "Ciudad Bolivar"
replace alto2 = 5 if violence_project1playerd1b == "Bosa"
replace alto2 = 6 if violence_project1playerd1b == "Usaquén"
replace alto2 = 7 if violence_project1playerd1b == "San Cristóbal"
replace alto2 = 8 if violence_project1playerd1b == "Rafael Uribe"
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
replace bajo1 = 4 if violence_project1playerd2a == "Ciudad Bolivar"
replace bajo1 = 5 if violence_project1playerd2a == "Bosa"
replace bajo1 = 6 if violence_project1playerd2a == "Usaquén"
replace bajo1 = 7 if violence_project1playerd2a == "San Cristóbal"
replace bajo1 = 8 if violence_project1playerd2a == "Rafael Uribe"
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
replace bajo2 = 4 if violence_project1playerd2b == "Ciudad Bolivar"
replace bajo2 = 5 if violence_project1playerd2b == "Bosa"
replace bajo2 = 6 if violence_project1playerd2b == "Usaquén"
replace bajo2 = 7 if violence_project1playerd2b == "San Cristóbal"
replace bajo2 = 8 if violence_project1playerd2b == "Rafael Uribe"
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

***Word assosited with the districts selected
*Hi_1 word
gen alto1_word = violence_project1playerm if alto1 == 1 


























