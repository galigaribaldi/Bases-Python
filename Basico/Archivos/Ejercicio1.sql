create table cliente_import(
    cliente_id          number(10, 0)    not null,
    nombre              varchar2(40)     not null,
    ap_paterno          varchar2(40)     not null,
    ap_materno          varchar2(40),
    email               varchar2(40)     not null,
    fecha_nacimiento    date             not null,
    constraint cliente_import_pk primary key (cliente_id)
)
;
create table dvd(
    dvd_id             number(10, 0)    not null,
    titulo             varchar2(40)     not null,
    precio             number(6, 2)     not null,
    tipo               char(1)          not null,
    fecha_recepcion    varchar2(30)             not null,
    fecha_registro     date default sysdate,
    constraint dvd_pk primary key (dvd_id)
)
;
create table musical(
    dvd_id     number(10, 0)    not null,
    artista    varchar2(40)     not null,
    constraint musical_pk primary key (dvd_id), 
    constraint musical_dvd_fk foreign key (dvd_id)
    references dvd(dvd_id)
)
;
create table pelicula(
    dvd_id      number(10, 0)    not null,
    sinopsis    varchar2(40)     not null,
    constraint pelicula_pk primary key (dvd_id), 
    constraint pelicula_dvd_fk foreign key (dvd_id)
    references dvd(dvd_id)
)
;
