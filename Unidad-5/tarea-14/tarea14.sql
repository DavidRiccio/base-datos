--Consultas 

    --Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
        select apellido1, apellido2, nombre from persona where tipo='alumno'order by apellido1;
        /*
        ┌───────────┬───────────┬──────────┐
        │ apellido1 │ apellido2 │  nombre  │
        ├───────────┼───────────┼──────────┤
        │ Domínguez │ Guerrero  │ Antonio  │
        │ Gea       │ Ruiz      │ Sonia    │
        │ Gutiérrez │ López     │ Juan     │
        │ Heller    │ Pagac     │ Pedro    │
        │ Herman    │ Pacocha   │ Daniel   │
        │ Hernández │ Martínez  │ Irene    │
        │ Herzog    │ Tremblay  │ Ramón    │
        │ Koss      │ Bayer     │ José     │
        │ Lakin     │ Yundt     │ Inma     │
        │ Saez      │ Vega      │ Juan     │
        │ Strosin   │ Turcotte  │ Ismael   │
        │ Sánchez   │ Pérez     │ Salvador │
        └───────────┴───────────┴──────────┘

        */
            --Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
        select nombre, apellido1, apellido2 from persona where tipo='alumno' and telefono not null;
        /*
        ┌──────────┬───────────┬───────────┐
        │  nombre  │ apellido1 │ apellido2 │
        ├──────────┼───────────┼───────────┤
        │ Salvador │ Sánchez   │ Pérez     │
        │ Juan     │ Saez      │ Vega      │
        │ José     │ Koss      │ Bayer     │
        │ Ramón    │ Herzog    │ Tremblay  │
        │ Daniel   │ Herman    │ Pacocha   │
        │ Inma     │ Lakin     │ Yundt     │
        │ Juan     │ Gutiérrez │ López     │
        │ Antonio  │ Domínguez │ Guerrero  │
        │ Irene    │ Hernández │ Martínez  │
        │ Sonia    │ Gea       │ Ruiz      │
        └──────────┴───────────┴───────────┘

        */
            --Devuelve el listado de los alumnos que nacieron en 1999.
        select * from persona where fecha_nacimiento REGEXP '1999';/*
        ┌────┬───────────┬─────────┬───────────┬───────────┬─────────┬─────────────────┬───────────┬──────────────────┬──────┬────────┐
        │ id │    nif    │ nombre  │ apellido1 │ apellido2 │ ciudad  │    direccion    │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
        ├────┼───────────┼─────────┼───────────┼───────────┼─────────┼─────────────────┼───────────┼──────────────────┼──────┼────────┤
        │ 7  │ 97258166K │ Ismael  │ Strosin   │ Turcotte  │ Almería │ C/ Neptuno      │           │ 1999/05/24       │ H    │ alumno │
        │ 22 │ 41491230N │ Antonio │ Domínguez │ Guerrero  │ Almería │ C/ Cabo de Gata │ 626652498 │ 1999/02/11       │ H    │ alumno │
        └────┴───────────┴─────────┴───────────┴───────────┴─────────┴─────────────────┴───────────┴──────────────────┴──────┴────────┘
        */
            --Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
        select * from persona where tipo='profesor'and telefono not null and nif REGEXP 'k$';
            --Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
        sselect * from asignatura where id_grado=7 and cuatrimestre=1 and curso=3;/*
        ┌────┬───────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
        │ id │                  nombre                   │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
        ├────┼───────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
        │ 72 │ Bases moleculares del desarrollo vegetal  │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
        │ 73 │ Fisiología animal                         │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
        │ 74 │ Metabolismo y biosíntesis de biomoléculas │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
        │ 75 │ Operaciones de separación                 │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
        │ 76 │ Patología molecular de plantas            │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
        │ 77 │ Técnicas instrumentales básicas           │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
        └────┴───────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘

        */
--Consultas multitabla (Join)

    --Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).

    --Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
    select a.* from asignatura as a join grado as g on a.id_grado=g.id where g.nombre REGEXP 'Informática';/*
    ┌────┬────────────────────────────────────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
    │ id │                                 nombre                                 │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
    ├────┼────────────────────────────────────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
    │ 1  │ Álgegra lineal y matemática discreta                                   │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 2  │ Cálculo                                                                │ 6.0      │ básica      │ 1     │ 1            │ 14          │ 4        │
    │ 3  │ Física para informática                                                │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 4  │ Introducción a la programación                                         │ 6.0      │ básica      │ 1     │ 1            │ 14          │ 4        │
    │ 5  │ Organización y gestión de empresas                                     │ 6.0      │ básica      │ 1     │ 1            │ 3           │ 4        │
    │ 6  │ Estadística                                                            │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 7  │ Estructura y tecnología de computadores                                │ 6.0      │ básica      │ 1     │ 2            │ 3           │ 4        │
    │ 8  │ Fundamentos de electrónica                                             │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 9  │ Lógica y algorítmica                                                   │ 6.0      │ básica      │ 1     │ 2            │ 3           │ 4        │
    │ 10 │ Metodología de la programación                                         │ 6.0      │ básica      │ 1     │ 2            │ 14          │ 4        │
    │ 11 │ Arquitectura de Computadores                                           │ 6.0      │ básica      │ 2     │ 1            │ 3           │ 4        │
    │ 12 │ Estructura de Datos y Algoritmos I                                     │ 6.0      │ obligatoria │ 2     │ 1            │ 3           │ 4        │
    │ 13 │ Ingeniería del Software                                                │ 6.0      │ obligatoria │ 2     │ 1            │ 14          │ 4        │
    │ 14 │ Sistemas Inteligentes                                                  │ 6.0      │ obligatoria │ 2     │ 1            │ 3           │ 4        │
    │ 15 │ Sistemas Operativos                                                    │ 6.0      │ obligatoria │ 2     │ 1            │ 14          │ 4        │
    │ 16 │ Bases de Datos                                                         │ 6.0      │ básica      │ 2     │ 2            │ 14          │ 4        │
    │ 17 │ Estructura de Datos y Algoritmos II                                    │ 6.0      │ obligatoria │ 2     │ 2            │ 14          │ 4        │
    │ 18 │ Fundamentos de Redes de Computadores                                   │ 6.0      │ obligatoria │ 2     │ 2            │ 3           │ 4        │
    │ 19 │ Planificación y Gestión de Proyectos Informáticos                      │ 6.0      │ obligatoria │ 2     │ 2            │ 3           │ 4        │
    │ 20 │ Programación de Servicios Software                                     │ 6.0      │ obligatoria │ 2     │ 2            │ 14          │ 4        │
    │ 21 │ Desarrollo de interfaces de usuario                                    │ 6.0      │ obligatoria │ 3     │ 1            │ 14          │ 4        │
    │ 22 │ Ingeniería de Requisitos                                               │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 23 │ Integración de las Tecnologías de la Información en las Organizaciones │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 24 │ Modelado y Diseño del Software 1                                       │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 25 │ Multiprocesadores                                                      │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 26 │ Seguridad y cumplimiento normativo                                     │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 27 │ Sistema de Información para las Organizaciones                         │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 28 │ Tecnologías web                                                        │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 29 │ Teoría de códigos y criptografía                                       │ 6.0      │ optativa    │ 3     │ 1            │             │ 4        │
    │ 30 │ Administración de bases de datos                                       │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 31 │ Herramientas y Métodos de Ingeniería del Software                      │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 32 │ Informática industrial y robótica                                      │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 33 │ Ingeniería de Sistemas de Información                                  │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 34 │ Modelado y Diseño del Software 2                                       │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 35 │ Negocio Electrónico                                                    │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 36 │ Periféricos e interfaces                                               │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 37 │ Sistemas de tiempo real                                                │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 38 │ Tecnologías de acceso a red                                            │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 39 │ Tratamiento digital de imágenes                                        │ 6.0      │ optativa    │ 3     │ 2            │             │ 4        │
    │ 40 │ Administración de redes y sistemas operativos                          │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 41 │ Almacenes de Datos                                                     │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 42 │ Fiabilidad y Gestión de Riesgos                                        │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 43 │ Líneas de Productos Software                                           │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 44 │ Procesos de Ingeniería del Software 1                                  │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 45 │ Tecnologías multimedia                                                 │ 6.0      │ optativa    │ 4     │ 1            │             │ 4        │
    │ 46 │ Análisis y planificación de las TI                                     │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 47 │ Desarrollo Rápido de Aplicaciones                                      │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 48 │ Gestión de la Calidad y de la Innovación Tecnológica                   │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 49 │ Inteligencia del Negocio                                               │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 50 │ Procesos de Ingeniería del Software 2                                  │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    │ 51 │ Seguridad Informática                                                  │ 6.0      │ optativa    │ 4     │ 2            │             │ 4        │
    └────┴────────────────────────────────────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘
    */
        --Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
    select p.apellido1, p.apellido2, p.nombre, d.nombre from persona as p, departamento as d join profesor as pr on p.id=pr.id_profesor and d.id=pr.id_departamento order by apellido1;
    /*
    ┌────────────┬────────────┬───────────┬────────────────────┐
    │ apellido1  │ apellido2  │  nombre   │       nombre       │
    ├────────────┼────────────┼───────────┼────────────────────┤
    │ Fahey      │ Considine  │ Antonio   │ Economía y Empresa │
    │ Hamill     │ Kozey      │ Manolo    │ Informática        │
    │ Kohler     │ Schoen     │ Alejandro │ Matemáticas        │
    │ Lemke      │ Rutherford │ Cristina  │ Economía y Empresa │
    │ Monahan    │ Murray     │ Micaela   │ Agronomía          │
    │ Ramirez    │ Gea        │ Zoe       │ Informática        │
    │ Ruecker    │ Upton      │ Guillermo │ Educación          │
    │ Schmidt    │ Fisher     │ David     │ Matemáticas        │
    │ Schowalter │ Muller     │ Francesca │ Química y Física   │
    │ Spencer    │ Lakin      │ Esther    │ Educación          │
    │ Stiedemann │ Morissette │ Alfredo   │ Química y Física   │
    │ Streich    │ Hirthe     │ Carmen    │ Educación          │
    └────────────┴────────────┴───────────┴────────────────────┘
    */
        --Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
    select a.nombre, an.anyo_inicio, an.anyo_fin from asignatura as a 
    ...> JOIN alumno_se_matricula_asignatura as al on a.id=al.id_asignatura
    ...> join persona as p on p.id=al.id_alumno
    ...> JOIN curso_escolar as an on al.id_curso_escolar=an.id
    ...> where p.nif='26902806M';
    /*
    ┌──────────────────────────────────────┬─────────────┬──────────┐
    │                nombre                │ anyo_inicio │ anyo_fin │
    ├──────────────────────────────────────┼─────────────┼──────────┤
    │ Álgegra lineal y matemática discreta │ 2014        │ 2015     │
    │ Cálculo                              │ 2014        │ 2015     │
    │ Física para informática              │ 2014        │ 2015     │
    └──────────────────────────────────────┴─────────────┴──────────┘
    */
        --Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).

        --Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.

    --Consultas multitabla (Where)

        --Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.

        --Devuelve un listado con los profesores que no están asociados a un departamento.

        --Devuelve un listado con los departamentos que no tienen profesores asociados.

        --Devuelve un listado con los profesores que no imparten ninguna asignatura.

        --Devuelve un listado con las asignaturas que no tienen un profesor asignado.

        --Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.

--Consultas resúmen (Funciones)

    --Devuelve el número total de alumnas que hay.
    select count(id) from persona where tipo='alumno' and sexo ='M';/*

    ┌───────────┐
    │ count(id) │
    ├───────────┤
    │ 3         │
    └───────────┘
    */
    --Calcula cuántos alumnos nacieron en 1999.
            select count(id) from persona where tipo='alumno' and fecha_nacimiento REGEXP '1999';
        ┌───────────┐
        │ count(id) │
        ├───────────┤
        │ 2         │
        └───────────┘

    --Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
            SELECT d.nombre, count(p.id_profesor) from profesor as p join departamento as d on p.id_departamento=d.id
            ...> join persona as pe on pe.id=p.id_profesor group by d.nombre;
            /*
            ┌────────────────────┬──────────────────────┐
            │       nombre       │ count(p.id_profesor) │
            ├────────────────────┼──────────────────────┤
            │ Agronomía          │ 1                    │
            │ Economía y Empresa │ 2                    │
            │ Educación          │ 3                    │
            │ Informática        │ 2                    │
            │ Matemáticas        │ 2                    │
            │ Química y Física   │ 2                    │
            └────────────────────┴──────────────────────┘
            */
    --Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.

    --Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
        /*select g.nombre , count(a.id) from grado as g join asignatura a group by g.id order by count(a.id);
        ┌────────────────────────────────────────────────────────┬─────────────┐
        │                         nombre                         │ count(a.id) │
        ├────────────────────────────────────────────────────────┼─────────────┤
        │ Grado en Ingeniería Agrícola (Plan 2015)               │ 83          │
        │ Grado en Ingeniería Eléctrica (Plan 2014)              │ 83          │
        │ Grado en Ingeniería Electrónica Industrial (Plan 2010) │ 83          │
        │ Grado en Ingeniería Informática (Plan 2015)            │ 83          │
        │ Grado en Ingeniería Mecánica (Plan 2010)               │ 83          │
        │ Grado en Ingeniería Química Industrial (Plan 2010)     │ 83          │
        │ Grado en Biotecnología (Plan 2015)                     │ 83          │
        │ Grado en Ciencias Ambientales (Plan 2009)              │ 83          │
        │ Grado en Matemáticas (Plan 2010)                       │ 83          │
        │ Grado en Química (Plan 2009)                           │ 83          │
        └────────────────────────────────────────────────────────┴─────────────┘

    --Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.

    --Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.

    --Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.

    --Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.

--Subconsultas

    --Devuelve todos los datos del alumno más joven.
        
        
        select * from persona where tipo='alumno' order by fecha_nacimiento DESC limit 1;
        /*
        ┌────┬───────────┬────────┬───────────┬───────────┬─────────┬───────────────────┬──────────┬──────────────────┬──────┬────────┐
        │ id │    nif    │ nombre │ apellido1 │ apellido2 │ ciudad  │     direccion     │ telefono │ fecha_nacimiento │ sexo │  tipo  │
        ├────┼───────────┼────────┼───────────┼───────────┼─────────┼───────────────────┼──────────┼──────────────────┼──────┼────────┤
        │ 4  │ 17105885A │ Pedro  │ Heller    │ Pagac     │ Almería │ C/ Estrella fugaz │          │ 2000/10/05       │ H    │ alumno │
        └────┴───────────┴────────┴───────────┴───────────┴─────────┴───────────────────┴──────────┴──────────────────┴──────┴────────┘
        */

    --Devuelve un listado con los profesores que no están asociados a un departamento.
        select p.*, d.nombre from profesor as p join departamento as d on d.id=p.id_departamento where p.id_departamento is null;

    --Devuelve un listado con los departamentos que no tienen profesores asociados.

    --Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.

    --Devuelve un listado con las asignaturas que no tienen un profesor asignado.

    --Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
