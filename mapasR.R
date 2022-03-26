print("Hola mundo")
"Hola mundo"
#este es un comentario
variable1 <- "castellanos"
print(variable1)
variable4 <- 12
variable4
clase <- 10.5

class(clase)
class(variable1)
x <- 1L
class (x)
a <- as.numeric(x)
class(x)

0 < 6
10 == 9

5 != 3


i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  
}


for (x in 1:10){
  print(x)
  
}

#  vectores en r

#para utilizar vectores  necesitamos  utilizar c()
frutas <- c("peras", "naranjas","manzanas")
frutas
#tambien es posible utilizar vectores  numericos

numeros <- c(1,2,3,4,5,6)
numeros

numeros <- 1:10
numeros

length(frutas)


#es posible ordenar los elementos en un vector
frutas <- c("peras", "naranjas","manzanas","limones","mango")
sort(frutas)

numeros <- c(32,54,31,5,1,54,62,32)
sort(numeros)

frutas[2]
# podemos ver varios elementos de  los vectores

frutas[c(1,2)]
#vamos a cambiar un elemento del vector

frutas[4] <- "papaya"
frutas
#ahora vamos a  estudiar LISTAS  en en R
#una liosta en r puede contener diferentes tiopos de datos dentro de ella ademas de ser una coleccion de dato ordenados  
mochila <- list("lapiz", "pluma", "goma")
mochila[1]
mochila[3] <- "trasportador"
mochila

length(mochila)
#busacar elemento dentro  de la lista
"manzana" %in% mochila
append(mochila,"torta",after=2)
#agregar un elemento
numeros <- list("uno","dos","tres","cuatro","cinco", "seis","siete")

(numeros)[2:5]

#vamos a practivar ciclo for bajo lista anterior
for (x in numeros){
  print(x)
}
lista3  <- c(mochila,numeros) #combinacion de  ambas vistas
lista3  
#matrizes


#una martriz es un conjunto de datos con columnas y filas



matriz <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol=2)
matriz


# aqui es posible
matriz  <-  matrix(c( "uno","dos","tres","cuatro"),nrow = 2, ncol = 2)

matriz



# podemos acceder a los elementos de la matriz utilizando corchetes


matriz[1,2]
# matriz es posoble acceder a toda fila si se especifica  una cosa despues del numero
matriz[2,]
#lo mismo va a suceder para el caso de las  columnas
matriz[,2]


matriz <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol=3)
matriz
#vamos a utilizar la funcion cbind poara agregar columnas adicionales

nuevamatriz<- cbind(matriz,c(10,11,12))
nuevamatriz
#podemos aser  lo mismo en caso de las filas , utilizando la funcion

#rbind()

nuevamatriz2<- rbind(matriz,c(10,11,12))
nuevamatriz2
#tanbien es posible eliminar filas y columnas  en una matriz
matriz <-matriz[-c(1),-c(1)]
matriz

#nos interesa buscar  la existencia de un elemento en la matriz
20 %in% nuevamatriz

#tambien podemos encontrar el numero de filas u columnas en una matriz

dim(nuevamatriz)

# es posible recorrer una matriz con un ciclo for
matriz  <-  matrix(c( "uno","dos","tres","cuatro"),nrow = 2, ncol = 2)
for (rows in 1:nrow (matriz)){
  for (columns in 1:ncol(matriz)){
    print(matriz[rows,columns])
    
  }
}

matriz1  <-  matrix(c( 1,2,3,4),nrow = 2, ncol = 2)
matriz1
matriz2  <-  matrix(c( 1,2,3,4),nrow = 2, ncol = 2)
matriz2
matriz1+matriz2
#OBSERVAMOS QUE LAS MATRICES SON BIDIMENSIONALES POR QUE SI QUEREMOS   EXTENDER LAS DIMENSIONES TENDREMMOS QUE TRABAJAR CON ARREGLLOS


arreglo <- c(1:24)
arreglo
##GRAFICOS

#para poder graficar necesitamos la funcion plot()
# la funcion toma parametros para especificar puntos en el diagrama

plot(1,3)

#es necesario la notacion de vector

plot(c(1,8,3,5,6),c(3,10,2,2))

# para poder graficar mas puntos es neceario que la cantidad de puntos
# en ambos eje sea  la misma  

plot(c(1,8,3,5,6),c(3,10,1,2,2))
# es´posible inducior un orden por medio de la utilizacion de variables



x<- c(1,2,3,4,5,6)
y<-c(7,8,9,10,11,12)
plot(x,y)

#podemos graficar la secuncia de puntos
plot(1:10)
#para graficar un linea recta utiilizaremos la funcion type
#ype="l"
plot(1:10, type="l")
plot(1:10,col="cyan")
# tamaño de puntos
plot(1:10,cex=1)

#es posible cambiar el formato del punto
plot(1:10,pch=7,cex=2)



#lo mismo que isimos  que  hicimos  po el caso de los puntos, podemos aplicarlo al  caso de las rectas
plot(1:10, type="l",col="cyan",lwd=10)


# la linea continua sale pr defecto di queremos el parametro lty  
plot(1:10, type="l",col="cyan",lwd=10,lty=10)
# par apoder graficar 2 funciones podemos utilizare la funcion plot y lines()


line<-c(1,2,3,4,5,10)
line2<-c(2,5,7,8,9,10)

plot(line,type="l",col="purple")
#plot(line, type="l",col="purple")
lines(line2,type="l",col="blue")
#installar librerias
install.packages("sf")
library(sf)


#grafica de dispersion nos permite mostrarla relacion de dos variables

x<-c(1,2,3,4,5,6,7,8)
y<-c(9,8,7,6,5,4,3,1)
plot(x,y)
# si queremos gregar etiquetas mostrar con los ejes
plot(x,y,main = "observaciones",xlab = "observaciones en x",ylab = "observaciones en y", col="red",cex=2)


#s1 tengo observar de dos naturalezas diferentes


x1<-c(1,2,3,4,5,6,7,8)
y1<-c(9,8,7,6,5,4,3,1)

x2<-c(11,23,21,44,43,4,14,56,13,1)
y2<-c(31,24,31,34,56,78,54,12,41,4)

plot(x,y,main="observaciones",xlab="observacion en x",ylab="observacion y",col="red",cex=2)

points(x2,y2,col="blue",cex=2)
#LIBRERIAS PARA GRAFICAR EN MAPA
install.packages("leaflet")
install.packages("tidyverse")
install.packages("ggmap")
install.packages("htmltools")
install.packages("maps")
install.packages("mapdata")
install.packages("mapproj")
install.packages("leaflet.extras")


library(leaflet)
library(tidyverse)
library(ggmap)
library(htmltools)
library(maps)
library(mapdata)
library(mapproj)
library(leaflet.extras)
w<- map_data("world")
#leaftlef : biblioteca mapas interactivos
#tidyverse  : coleccion de paquetes de R diseñados para la ciencia de datos
#ggmap:representacion  de informacion georeferenciada
#leaftlef.extras :mas funcionalidadutilizando varios complementos
#htmltools :crear y manipular HTML desde R
# maps:creacion de mapas
#maproj:conversaacion de latitud  y longitud en cordinacion  proyectadas
View(w)
mes<- map_data("world",region = c("Mexico"))
view(mes)
ggplot(mes, aes(x=long,y=lat,group=group))+geom_polygon()
ggplot(mes, aes(x=long,y=lat,group=group,fill=region))+geom_polygon()
ggplot(mes, aes(x=long,y=lat,group=group,fill=region))+geom_polygon(color="black")
# realizar mapas de 2 paises
paises<- map_data("world",region = c("Mexico","Venezuela"))
view(paises)
ggplot(paises, aes(x=long,y=lat,group=group,fill=region))+geom_polygon(color="black")
#podemos vizualizar de forma circular
ggplot(paises, aes(x=long,y=lat,group=group,fill=region))+geom_polygon(color="black")+coord_map("polyconic")
#nos vemos a centrar  en la informacion de Eu
s<- map_data("state")
View(s)
ggplot(s, aes(x=long,y=lat,group=group,fill=region))+geom_polygon(color="black")+coord_map("polyconic")
c<-read.csv(file.choose(),header = T)
View(c)
f<-c("country")
ggplot(f, aes(x=long,y=lat,group=group,fill=region))+geom_polygon(color="black")+coord_map("polyconic")


table(c$country)

usa<-c %>% filter(country == "United States")#escojemos solo la de estadios unidos
view(usa)
usa<- c %>% group_by(province) %>%
  summarise(count=n()) %>%
  arrange(desc(count))


view(usa)
usa$province<-tolower(usa$province)
view(usa)
data<- merge(s,usa,
             by.x = "region",
             by.y = "province")
view(data)


ggplot(data,aes(x=long, y=lat,
                group=group,
                fill=count))+
  geom_polygon(color="cyan")+
  coord_map("polyconic")



ggplot(data,aes(x=long, y=lat,
                group=group,
                fill=count))+
  geom_polygon(color="cyan")+
  coord_map("polyconic")+
  scale_fill_gradient2()



ggplot(data,aes(x=long, y=lat,
                group=group,
                fill=count))+
  geom_polygon(color="cyan")+
  coord_map("polyconic")+
  scale_fill_gradient2(low = "white" , high="red")




ggplot(data,aes(x=long, y=lat,
                group=group,
                fill=count))+
  geom_polygon(color="cyan")+
  coord_map("polyconic")+
  scale_fill_gradient2(low = "blue" , high="black")+
  theme_void()+
  ggtitle("covid cases in us")

