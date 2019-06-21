--------------------------------
---Valores por default
create table producto (
	producto_id number(10,0),
	tipo char(1) default 'A',
	nombre varchar2(10) not null,
	fecha_creacion date default sysdate
)
;

----------------------------------------------------
----Constraint concepto pago
create table concepto_pago (
	concepto_id NUMBER(10, 0) constraint concepto_pago_pk primary key,
	tipo_concepto char(1) not null constraint cp_tipo_concepto_chk check (
	tipo_concepto in ('A', 'B', 'C')),
	clave varchar(3) not null constraint cp_clave_uk unique,
	descripcion
	varchar(255),
	importe NUMBER(8, 2) not null constraint cp_importe_chk check (
	importe < 100000)
)
;
----------------------------------
create table quincena(
	quincena_id number(10,0) constraint quincena_pk
	primary key,
	numero_quincena number(2,0) not null,
	fecha_inicio date not null,
	fecha_fin date not null
)
;
create table nomina(
	nomina_id number(10,0) constraint nomina_pk primary key,
	fecha_creacion date not null,
	quincena_id not null constraint quincena_id_fk references
	quincena(quincena_id)
);
------------------------------------------------
--cONSTRAINTS A NIVEL TABLA
create table venta(
	venta_id numeric(10,0) not null,
	fecha_venta date not null,
	tipo_venta char(3),
	constraint venta_pk primary key(venta_id),
	constraint ve_tipo_venta_chk check(tipo_venta in('MA','EL'))
)
;
create table orden_venta(
	orden_id numeric(10,1) not null,
	venta_id numeric(10,0) not null,
	constraint orden_venta_pk primary key(orden_id),
	constraint venta_ov_venta_id_fk foreign key(venta_id)
	references venta(venta_id)
)
;