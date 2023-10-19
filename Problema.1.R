#Enunciado 1 
#cargamos las funciones
source("teoriadecision_funciones_incertidumbre.R", encoding = "UTF-8")


#creamos la tabla 
m1<-crea.tablaX(c(2,3,4,-1,7,8,
                  6,2,4,5,1,0),
                numalternativas =4 ,
                numestados = 3)
m1
#Primero vamos a solucioanrlo en situacion favorable 

#metodo wald
sol_w<-criterio.Wald(m1)
sol_w
#Las mejores soluciones son d1 y d3 según el método wald

#Metodo optimista
sol_op<-criterio.Optimista(m1)
sol_op

#La mejor solucion según el criterio optimista es d2 


#criterio Hurwicz
sol_hu<-criterio.Hurwicz(m1)
sol_hu
criterio.Hurwicz.General(m1)
#La mejor solucion segun el criterio Hurwicz es d3

#criterio savage 
sol_sa<-criterio.Savage(m1)
sol_sa

#La mejor solucion desgun el criterio savage es d1 

#criterio Laplace
sol_la<-criterio.Laplace(m1)
sol_la
#La mejor solucion segun el criterio Laplace es d2 

#criterio punto ideal
sol_pi<-criterio.PuntoIdeal(m1)
sol_pi
#La mejor oslucion segun el criterio de Punto Ideal es d3


#Por lo tanto, como conclusion final, podemos decir que la mejor
#solcuion para este problema es d3

#Ahora, vamos a trabajar con la misma tabla pero vamos a 
#hacerlo es situacion desfavorable. 

#Utilizamos la misma tabla 

m1

#Criterio Wald 

sol_des_wa<-criterio.Wald(m1,favorable = F)
sol_des_wa

#La mejor solucion segun el metodo wald es d1 

#Criterio optimista 
sol_des_op<-criterio.Optimista(m1,favorable = F)
sol_des_op
#La menjor solucion segun el criterio optimista es d2


#Criterio Hurwicz 
sol_des_Hu<-criterio.Hurwicz(m1,favorable = F)
sol_des_Hu

#La mejor solucion segun el criterio Hurwicz es d1 

#Criterio Savage 
sol_des_sav<-criterio.Savage(m1, favorable = F)
sol_des_sav
#La mejor solcuion segun el criterio savage es d1 

#Criterio Laplace 
sol_des_La<-criterio.Laplace(m1, favorable = F)
sol_sa
#La mejor solcuion segun el creiterio Laplace es d1 



#Criterio Punto Ideal 
sol_des_PI<-criterio.PuntoIdeal(m1, favorable = F)
sol_des_PI

#La mejor solucion segun el criterio de punto ideal es d1 

#Por lo tanto, como conclusion final, podemos decir que la mejor
#solcuion para el caso desfavorable es d1



