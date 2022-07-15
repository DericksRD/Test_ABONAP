# EXAMEN DE DESARROLLO ABONAP

Este repositorio contiene todos los artefactos creados para la resolución del ***Examen de Desarrollo de ABONAP***. En este, encontrarás los *scripts* para la creación de la base de datos y el código fuente con la aplicación ASP.NET Core 5 MVC, además de encontrar más abajo las respuestas de las preguntas planteadas en el examen.  

## Cuestionario  

**I. Base de Datos**  

1.  ¿Qué diferencias existe entre las sentencias **JOIN** e **INNER JOIN**?  
**Respuesta**: Existen distintos tipos de **JOIN** en una base de datos. Por defecto, SqlServer y otros gestores utilizan el **INNER JOIN**, el cual trae los resultados cuando existen coincidencias en ambas tablas.  

2.  ¿Qué instruccón de SQL se puede ejecutar para eliminar la data de una tabla, pero conservando su estructura?  
**Respuesta**: Se puede utilizar la instrucción **DELETE FROM [Nombre de la Tabla]** sin especificar **WHERE**. La tabla quedará vacía.  

3.  Escribir una consulta que devuelva las **direcciones** y **nombres** de las sucursales ABONAP y **ordenar** los resultados de forma **descendiente** por la sucursal.  
**Respuesta**: El resultado se encuentra en el archivo [QuerySucursales](https://github.com/DericksRD/Test_ABONAP).  

4.  ¿Debe la cláusula **WHERE** aparecer siempre antes de la cláusula **GROUP BY** en una consulta **SELECT**?  
**Respuesta**: Si, esto es debido a que el **GROUP BY** es una clausula opcional del **WHERE**.  

5.  Crear las siguientes tablas con la estructura establecida.  
**Respuesta**: Esto se encuentra en el archivo [DataBaseScript](https://github.com/DericksRD/Test_ABONAP/blob/main/Scripts%20Base%20de%20Datos/DataBaseScript.sql).  

6.  Cree las sentencias requeridas para insertar los valores que se indicarán para cada tabla.
**Respuesta**: Esto se encuentra en el archivo [SeedData](https://github.com/DericksRD/Test_ABONAP/blob/main/Scripts%20Base%20de%20Datos/SeedData(Number%206).sql).  

7.  Crear un Procedimiento Almacenado que reciba como parámetro el Código de un Préstamo y retorne su monto, el nombre del cliente.  
**Respuesta**: Esto se encuentra en el archivo [PrestamoProcedure](https://github.com/DericksRD/Test_ABONAP/blob/main/Scripts%20Base%20de%20Datos/PrestamoProcedure.sql).  

8.  ¿Evaluando las tablas vistas hasta ahora, de qué forma se puede relacionar la información de la tabla Documentos con la tabla Clientes?  
**Respuesta**: Dentro de la tabla de Clientes, se puede crear una llave foránea que referencia al IdDocumento de la tabla Documentos.  

## **II - Programación**

1.  Crear una aplicación Web (preferiblemente ASP CORE MVC o ASP.NET MVC5) que permita crear, ver, modificar y eliminar registros, tomando en cuenta todo el modelo visto en el punto 5 en la prueba de base de datos.

2.  Utilizando el mismo modelo de base de datos, realizar un formulario que permita crear un cliente con los siguientes campos:

- Campos:
Nombres, Primer Apellido, Segundo Apellido y Códigos.

**Ambos ejercicios se encuentran resueltos en el proyecto web de la carpeta de** [Proyecto MVC](https://github.com/DericksRD/Test_ABONAP/tree/main/Proyecto%20MVC/Test_ABONAP).
