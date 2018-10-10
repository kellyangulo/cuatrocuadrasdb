use CuatroCuadras
go
use cacas
/*
Cuatro Cuadras
 
Le han pedido diseñar la base de datos para una nueva app llamada "Cuatro Cuadras", cuya 
fnalidad es recomendar lugares.
Los datos necesarios para un lugar son su nombre, ubiación geográfca (latitud y longitud) y una
descripción corta.
De los usuarios: su nombre, nombre de usuario, email, contraseña, ciudad de residencia e 
intereses (lista de palabras clave)
Un usuario puede hacer "check in" en un lugar, o sea, anunciar que está en un lugar, 
opcionalmente puede hacer un comentario, y de ese evento guardamos la fecha y hora. 
Los lugares pueden recibir una valoración de los usuarios que sirve para que otros usuarios 
sepan que tan bueno es ese lugar, opcionalmente puede hacer una reseña con esa valoración.
Los lugares pertenecen a una categoría, por ejemplo: Restaurante, Escuela, Bar, Parque
Los lugares pueden tener etiquetas asociadas, por ejemplo: exótico, photoboot, 
deportesextremos
Los usuarios pueden tener amigos en la app, para lo cual se hace una solicitud y el otro usuario 
la puede aceptar o rechazar.
Como forma de inventivar el uso de la app, se otorgan diferentes insignias que representan los 
logros de los usuarios. Cada logro tiene ciertos requisitos, todos asociados a check-ins
Como ejemplo proporcionamos algunos :
 - Fotogénico: Hacer checkin en 3 lugares diferentes con cabina de fotos (etiqueta photoboot)
 - Navegante: Hacer check-in desde 3 lugares diferentes con la etiqueta "canoa"
 - La Voz: Hacer 3 check-ins en un mes desde lugares con la categoría "Karaoke Bar", no 
necesariamente diferentes
 - Melómano: Hacer 5 check-in en lugares de la categoría "Tienda de música"
 - Cinéflo: Hacer 15 check-in en cines
 - Catador de comida: Hacer check-ins en 10 restaurantes diferentes
 - Trabajador: Hacer 200 check-in en lugares de la categoría "Ofcinas"
Tip: Encuentre el patrón de defnición de los logros
De cada logro obtenido se guarda la fecha, hora y lugar
*/


--Tabla ciudad
insert into Ciudad(nombre) values('Culiacán')
insert into Ciudad(nombre) values('Mochis')
insert into Ciudad(nombre) values('Guasave')
insert into Ciudad(nombre) values('Guadalajara')
insert into Ciudad(nombre) values('Durango')
insert into Ciudad(nombre) values('Parral')
insert into Ciudad(nombre) values('Poza Rica') 
insert into Ciudad(nombre) values('Yucatán')
insert into Ciudad(nombre) values('Puebla')
insert into Ciudad(nombre) values('CDMX')
insert into Ciudad(nombre) values('Michoacán')

select * from Ciudad
--Tabla interes
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')
insert into Interes(nombre) values('')

--Tabla Etiqueta
insert into Etiqueta(nombre) values('EXTREMO')
insert into Etiqueta(nombre) values('INTENSO')
insert into Etiqueta(nombre) values('NOPAINNOGAIM')
insert into Etiqueta(nombre) values('Gordos Paradise')
insert into Etiqueta(nombre) values('GOALS')
insert into Etiqueta(nombre) values('NO GOALS')
insert into Etiqueta(nombre) values('ilYu')
insert into Etiqueta(nombre) values('Reading')
insert into Etiqueta(nombre) values('Photoboot')
insert into Etiqueta(nombre) values('Studiying')
select * from Etiqueta

--Tabla Categoria
insert into Categoria(nombre) values('Restaurant') --1
insert into Categoria(nombre) values('Parque') --2
insert into Categoria(nombre) values('Bar') --3
insert into Categoria(nombre) values('Escuela') --4
insert into Categoria(nombre) values('Café') --5
insert into Categoria(nombre) values('Cine') --6
insert into Categoria(nombre) values('GYM') --7
insert into Categoria(nombre) values('Plaza') --8
insert into Categoria(nombre) values('Biblioteca') --9
insert into Categoria(nombre) values('Hotel') --10
insert into Categoria(nombre) values('Banco') --11
select*from Categoria


-----------------Tabla Lugar------------------------------------------------
 --1
 select*from Lugar
 drop table Lugar
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion) 
values('La Estacion de cafe', 345.12, 12345.12, 5 , 'La mejor cafeteria de fondo de bikini')
insert  into Lugar(Nombre, Latitud, Longitud, Categoria_id, Descripcion)
values('La Sazona',345.81,278.31, 3, 'El mejor bar')
insert  into Lugar(Nombre, Latitud, Longitud, Categoria_id, Descripcion)
values('Paprika', 785.81, 890.31, 1, 'Pizzas y Spaguetti')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Taqueria San Juan',243.31,223.31, 1, 'Tacos Culichis')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Antojos Mexicanos',243.31,223.31, 1, 'Enchiladas, gorditas y mas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Profa. Emilia Obeso Lopez',243.31,223.31, 4, 'Escuela secundaria publica')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Avengers',243.31,223.31, 7, 'Gimnasio Profesional')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las Riberas',243.31,223.31, 2, 'Parque familiar')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Cinmex',243.31,223.31, 6, 'Cine')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Cinepolis',243.31,223.31, 6, 'Cine barato')

--11
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Forum Culiacan',243.31,223.31, 8, 'Plaza principal')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Edificio',243.31,223.31, 10, 'Hotel Edificio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Isla de los niños',233.31,243.32, 2, 'Parque para niños')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El mariachi loco',223.31,243.21, 5, 'Comida mexicana')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Maria Café', 133.31,523.51, 5, 'Comida, amigos y música')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las rocas',243.31,267.31, 1, 'Restaurante para mayores')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Aispuro Pollos', 223.33 , 223.31, 1, 'Pollos, hamburguesas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('FamilyGym', 568.81, 383.41, 7, 'Gimnasio familiar ')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Banorte',678.31, 728.31, 11, 'Banco de México')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Don Dago', 283.31,490.91, 1, 'Hot dogs y hambuerguesas bien ricas')

--21
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('La locomotora',243.31,223.31, 3, 'Bar alternativo')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Barbudo',789.41,790.31, 3, 'Cerveza y alitas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Shaggy',243.31,225.31, 3, 'Bar con musica en vivo')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El norteño',253.31,423.31, 3, 'Puras canciones del Komander')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Galatzia',253.31,789.81, 3, 'pura calidad')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las ranas',243.31,253.51, 3, 'Bar para adultos')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Britney Pelona',333.71,838.38, 3, 'bar sin alcohol para jovenes')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('YellowMellow',667.31,890.90, 3, 'Bar para los unicos')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El chairo',43.43,493.90, 3, 'Abierto de día')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Acdelco',343.31,993.31, 3, 'Bar ambientado en los 90') 

--31
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Agronomía',243.31,223.31, 4, 'Escuela profesional de agronomía')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Biología',783.31,123.31, 4, 'Facultad de Biología')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Veterinaria',243.31,223.31, 4, 'Escuela profesional')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Psicología',243.31,223.31, 4, 'Facultad de Psicología')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Turismo',243.31,223.31, 4, 'Escuela de Turismo')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Relaciones Públicas',243.31,223.31, 4, 'Facultad de relaciones públicas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('BioMedicina',243.31,223.31, 4, 'Facultad de BioMedicina')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Informática',243.31,223.31, 4, 'Facultad de Informática')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Fisico-Matematico',243.31,223.31, 4, 'Facultad de Fisico-Matemático')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Tecnologias de la informacion',203.31,49.31, 4, 'Facultad Tecnologias de la informacion')

--41
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las lupitas',243.31,223.31, 10, 'Hotel 5 estrellas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Rojo  vivo',243.31,223.31, 10, 'Hotel con experiencia para eventos')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las Chalupas',243.31,223.31, 10, 'Hotel 4 estrellas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Noches doradas',243.31,223.31, 10, 'Noches a mitad de precio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Día y noche',243.31,223.31, 10, 'Hotel 3 estrellas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Hojas Azules',243.31,223.31, 10, 'Hotel')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Hojas Verdes',243.31,223.31, 10, 'Hotel')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Hotel Hojas Violetas',243.31,223.31, 10, 'Hotel')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Pikachu',243.31,223.31, 10, 'Hotel bonito')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Los hojales',899.31,223.31, 10, 'Hotel') 

--51
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Galerías',673.81,123.91, 8, 'Plaza Galerías Culiacán')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('San Juan',843.31,233.81, 8, 'Plaza San Juan México')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Gran Plaza',783.31,993.31, 8, 'La gran Plaza')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Francisco Calderón',458.31,899.31, 8, 'Plaza')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Las Américas',893.31,212.31, 8, 'Plaza las Américas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Los Pinos',253.89,223.31, 8, 'Plaza Los Pinos')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Cañadas',793.31,923.31, 8, 'Plaza las Cañadas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Plumas',283.31,213.31, 8, 'Plaza las Plumas')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Valle Alto',123.18,218.31, 8, 'Plaza Valle Alto')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Los Ángeles',243.31,223.31, 8, 'Plaza los Ángeles')
 --61
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('San Ángel',743.31,283.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Flamencos',279.31,293.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Zanahorias',283.31,563.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Mechicanos',283.31,789.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Aztecas',893.31,289.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Chichemecas',243.31,223.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Diaz',248.31,273.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Juan Gabriel',283.31,229.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El divo de Juarez',243.31,283.31, 5, 'Cafetería Chida')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Adams',213.31,213.31, 5, 'Cafetería Chida')

--71
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El gallo',563.01,283.31, 1, 'Restaurante Americano')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Marias',143.31,213.31, 1, 'Restaurante Mexicano')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Don Griego', 143.31,123.31, 1, 'Comida Griega')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Atiro',343.51,723.31, 1, 'Comida Japonesa')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Achimiko',647.71,823.91, 1, 'Comida China')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Albertos',767.11,283.31, 1, 'Comida Itiliana')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Hänz',283.31,213.11, 1, 'Comida Alemana')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('El chivo feliz',187.31,300.31, 1, 'Comida baja en grasa')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Fox',248.31,213.31, 1, 'Snacks para jóvenes')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Booking',212.31,723.92, 1, 'Comida italiana y libros a la mano')

--81
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Fuerte seré hoy',243.31,223.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Malandrines',241.61,223.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Buldog',123.71,890.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Big dog',843.31,263.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Venados',273.20,998.81, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Girasoles',893.31,283.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Machos',248.31,221.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Gloria',243.31,223.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Estefano',243.31,223.31, 7, 'Gimnasio')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Mika',279.31,213.31, 7, 'Gimnasio')

--91
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('La Juana',243.31,223.31, 2, 'Parque familiar')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Banamex',243.31,223.31, 11, 'Banco de méxico')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Megalon',243.31,223.31, 2, 'Parque para animales')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Banka',243.31,223.31, 11, 'Banco nacional')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripción)
values('87',243.31,223.31, 2, 'Parque temático de diversiones')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Alegrias',243.31,223.31, 2, 'Parque familiar')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('ParqueTec',243.31,223.31, 2, 'Parque temático de tecnológica')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Mexcan',243.31,223.31, 11, 'Banco para retirados')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Siumex',243.31,223.31, 11, 'Banco de México')
insert  into Lugar(Nombre,Latitud, Longitud, Categoria_id, Descripcion)
values('Panca',243.31,223.31, 2, 'Parque para caninos')

-------TABLA LUGARETIQUETA----------
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(1,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(2,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(3,8)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(4,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(2,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(6,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(7,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(8,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(3,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(4,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(7,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(25,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(24,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(73,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(35,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(52,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(51,2)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(75,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(56,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(65,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(55,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(52,4)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(50,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(59,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(42,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(63,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(12,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(1,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(6,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(8,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(30,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(96,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(65,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(7,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(42,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(6,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(53,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(74,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(73,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(65,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(53,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(21,9)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(50,2)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(39,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(94,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(40,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(96,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(92,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,9)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(35,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(43,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(65,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(88,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(99,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(100,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(3,2)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(76,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(100,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,2)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(47,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(95,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(72,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,8)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(50,8)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(63,8)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(79,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(83,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(73,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(74,2)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,4)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(51,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(64,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(4,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(3,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(56,9)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(57,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(58,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(85,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,3)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(35,6)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(45,8)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(85,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(15,9)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(35,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(57,5)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(51,7)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(55,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(66,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(77,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(98,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(67,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(76,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(5,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,1)
insert into LugarEtiqueta(Lugar_ID, Etiqueta_ID) values(23,6)