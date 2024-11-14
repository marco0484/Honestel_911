CREATE SCHEMA HONESTEL;

commit;

CREATE TABLE HONESTEL.TASUFOLIOS_HON
										(
											 FIFOLIO_ID 	        int
											,FICASO_ID  	        int
											,FCFECHA_CREACION       varchar(50)
											,FCFECHA_ASIGNACION     varchar(50)
											,FCTICKET_TIPO          varchar(50)
											,FCDESCRIPCION 		    varchar(50)
											,FCDESCRIPCION2		    varchar(50)
											,FCAREA_ASIG			varchar(50)
											,FCESTATUS				varchar(50)
											,FCRESUL_DEN			varchar(50)
											,FCFECHA_CIERRE			varchar(50)
											,FCFECHA_RESUELTO		varchar(50)
											,FCANAL_ORIGEN			varchar(50)
											,FCANONIMATO 			varchar(50)
											,FCAGENTE_ASIG 			varchar(50)
											,FCFECHA_STANDBY 		varchar(50)
											,FCATENDEDOR			varchar(50)
											,FCORREO_ATENDEDOR 		varchar(50)
											,FCESTADO				varchar(50)
											,FCREUCPERACION			varchar(50)
											,FCONCLUCIONES			varchar(50)
											,FIHORAS_INVES			int
											,FDULTIMA_MODIFICACION  DATE
											,FCUSUARIO_MODIFICO     varchar(30)
										);
										/
		ALTER TABLE HONESTEL.TASUFOLIOS_HON ADD CONSTRAINT PK_HON_01 PRIMARY KEY (FIFOLIO_ID);
	/
	CREATE TABLE HONESTEL.TASUDENUNXFOL_HON
											(
												 FIFOLIO_ID				int
												,FIDENUN_ID 			int
												,FINUNDENUN_ID			int
												,FCNOMBRE_DENUNCIADO	varchar(100)
												,FCPUESTO_DENUNCIADO 	varchar(100)
												,FCOMPANIA_DENUNCIADO 	varchar(70)
												,FCUBICA_DENUNCIADO 	varchar(50)
												,FCESTADO_DENUNCIADO 	varchar(50)
												,FCDEPART_DENUNCIADO	varchar(50)
												,FCREPONSABLE_DENUN	 	varchar(50)
												,FDULTIMA_MODIFICACION  DATE
												,FCUSUARIO_MODIFICO		varchar(50)
											);

	ALTER TABLE HONESTEL.TASUDENUNXFOL_HON ADD CONSTRAINT PK_HON_02 PRIMARY KEY (FIFOLIO_ID,FIDENUN_ID);
	ALTER TABLE HONESTEL.TASUDENUNXFOL_HON ADD CONSTRAINT FK_HON_01 FOREIGN KEY (FIFOLIO_ID) REFERENCES HONESTEL.TASUFOLIOS_HON;
		/
		
		CREATE TABLE HONESTEL.TASUDENUNCT_HON
											(
												FIFOLIO_ID      	 	int
											   ,FISOCIO_DENUNCIANTE	 	int
											   ,FCNOMBRE_DENUNCIANTE 	varchar(50)
											   ,FCPUESTO_DENUNCIANTE	varchar(50)
											   ,FCORREO_DENUNCIANTE		varchar(50)
											   ,FCTEL_DENUNCIANTE		varchar(50)
											   ,FCDEPART_DENUNCIANTE	varchar(50)
											   ,FICONTAC_DENUNCIANTE	varchar(50)
											   ,FCMEDIOCONT_DENUNCIANTE	varchar(50)
											   ,FCHALLAZGO_DENUNCIANTE	varchar(50)
											   ,FDULTIMA_MODIFICACION	DATE
											   ,FCUSUARIO_MODIFICO		varchar(50)
											);
										/
CREATE TABLE HONESTEL.TASUINVOLU_HON (
									    FIFOLO_ID           int,
									    FINVOLUCRADO_ID     int,
									    FINVOLUCRADO_DESC   varchar(4000),
									    FDULTIMA_MODIFICACION DATE,
									    FCUSUARIO_MODIFICO  varchar(30),
									    FCNOMBRE_INVOLUCRADO varchar(80),
									    FCPUESTO_INVOLUCRADO varchar(110),
									    FCCOMPANIA_INVOLUCRADO varchar(80),
									    FCHALLAZGO_1_INVOL  varchar(80 ),
									    FCHALLAZGO_2_INVOL  varchar(80 ),
									    FCONSECUENCIA_INVOL varchar(80 ),
									    FCRESPON_EJEC_INVOL varchar(80 ),
									    FCFECHA_EJEC_INVOL  varchar(80 ),
									    FCNIVEL_MANDO_INVOL varchar(110 ));
/

CREATE TABLE HONESTEL.TASUFOLIOS2_HON (
									    FIFOLO_ID           int ,
									    FIGRAVEDAD_ID       int,
									    FIURGEN_ID          int,
									    FDULTIMA_MODIFICACION DATE,
									    FCUSUARIO_MODIFICO  varchar(30)
									);
									
								/
								
CREATE TABLE HONESTEL.TASUTMXDNXF_HON (
										    FIFOLO_ID            int,
										    FIDENUN_ID           int,
										    FITEMA_ID            int,
										    FCTEMA_DESC          varchar(500),
										    FCCOMP_DESC          varchar(500),
										    FDULTIMA_MODIFICACION DATE,
										    FCUSUARIO_MODIFICO  varchar(30)
										);
										
									/
									
									INSERT INTO HONESTEL.TASUFOLIOS_HON (
    FIFOLIO_ID, FICASO_ID, FCFECHA_CREACION, FCFECHA_ASIGNACION,
    FCTICKET_TIPO, FCDESCRIPCION, FCDESCRIPCION2, FCAREA_ASIG, 
    FCESTATUS, FCRESUL_DEN, FCFECHA_CIERRE, FCFECHA_RESUELTO,
    FCANAL_ORIGEN, FCANONIMATO, FCAGENTE_ASIG, FCFECHA_STANDBY, 
    FCATENDEDOR, FCORREO_ATENDEDOR, FCESTADO, FCREUCPERACION,
    FCONCLUCIONES, FIHORAS_INVES, FDULTIMA_MODIFICACION, FCUSUARIO_MODIFICO
) VALUES 
(1, 1001, '2023-10-01', '2023-10-02', 'Soporte', 'Problema en el sistema', 'No responde', 'IT', 
 'Abierto', 'Pendiente', '2023-10-10', '2023-10-08', 'Email', 'No', 'Juan Pérez', '2023-10-03', 
 'Carlos García', 'carlos.garcia@example.com', 'Activo', 'Recuperado', 'Sin conclusiones', 4, 
 '2023-10-10', 'admin'),

(2, 1002, '2023-09-15', '2023-09-16', 'Mantenimiento', 'Revisión de seguridad', 'Completado', 'Seguridad', 
 'Cerrado', 'Resuelto', '2023-09-20', '2023-09-19', 'Teléfono', 'Sí', 'María López', '2023-09-17', 
 'Ana Torres', 'ana.torres@example.com', 'Inactivo', 'N/A', 'No se requieren conclusiones', 3, 
 '2023-09-20', 'user123'),

(3, 1003, '2023-08-05', '2023-08-06', 'Consulta', 'Consulta de datos', 'Acceso concedido', 'Data Analysis', 
 'Cerrado', 'Resuelto', '2023-08-10', '2023-08-09', 'Web', 'No', 'Pedro Sánchez', '2023-08-07', 
 'Luisa Martínez', 'luisa.martinez@example.com', 'Activo', 'Recuperado parcialmente', 'Conclusión pendiente', 5, 
 '2023-08-10', 'admin'),

(4, 1004, '2023-07-20', '2023-07-21', 'Soporte', 'Error en aplicación', 'Problema intermitente', 'Desarrollo', 
 'En proceso', 'En revisión', '2023-07-30', '2023-07-29', 'Chat', 'Sí', 'Jorge Ramírez', '2023-07-22', 
 'Mónica Flores', 'monica.flores@example.com', 'Activo', 'N/A', 'Sin conclusiones', 2, 
 '2023-07-30', 'support_user'),

(5, 1005, '2023-06-10', '2023-06-11', 'Reclamo', 'Retraso en servicio', 'Incidencia registrada', 'Atención al Cliente', 
 'Abierto', 'Pendiente', '2023-06-15', '2023-06-14', 'Email', 'No', 'Laura González', '2023-06-12', 
 'Roberto Méndez', 'roberto.mendez@example.com', 'Pendiente', 'Recuperado', 'No aplica', 6, 
 '2023-06-15', 'user456');


/


INSERT INTO HONESTEL.TASUDENUNXFOL_HON (
    FIFOLIO_ID, FIDENUN_ID, FINUNDENUN_ID, FCNOMBRE_DENUNCIADO, 
    FCPUESTO_DENUNCIADO, FCOMPANIA_DENUNCIADO, FCUBICA_DENUNCIADO, 
    FCESTADO_DENUNCIADO, FCDEPART_DENUNCIADO, FCREPONSABLE_DENUN, 
    FDULTIMA_MODIFICACION, FCUSUARIO_MODIFICO
) VALUES 
(1, 2001, 3001, 'Juan Pérez', 'Gerente de Ventas', 'Compañía ABC', 'Oficina Central', 
 'Activo', 'Ventas', 'Carlos García', '2023-10-11', 'admin'),

(2, 2002, 3002, 'Ana López', 'Analista de Datos', 'Compañía XYZ', 'Sede Norte', 
 'Pendiente', 'Análisis', 'Luisa Martínez', '2023-09-21', 'user123'),

(3, 2003, 3003, 'Pedro Sánchez', 'Ingeniero de Software', 'Tech Solutions', 'Planta Este', 
 'Activo', 'Desarrollo', 'María López', '2023-08-11', 'admin'),

(4, 2004, 3004, 'Laura González', 'Especialista en Atención al Cliente', 'Global Services', 'Sucursal Sur', 
 'Inactivo', 'Atención al Cliente', 'Roberto Méndez', '2023-07-25', 'support_user'),

(5, 2005, 3005, 'Mónica Flores', 'Consultora de Seguridad', 'Secure Corp', 'Planta Oeste', 
 'Pendiente', 'Seguridad', 'Jorge Ramírez', '2023-06-12', 'user456');

/

INSERT INTO HONESTEL.TASUDENUNCT_HON (
    FIFOLIO_ID, FISOCIO_DENUNCIANTE, FCNOMBRE_DENUNCIANTE, FCPUESTO_DENUNCIANTE, 
    FCORREO_DENUNCIANTE, FCTEL_DENUNCIANTE, FCDEPART_DENUNCIANTE, 
    FICONTAC_DENUNCIANTE, FCMEDIOCONT_DENUNCIANTE, FCHALLAZGO_DENUNCIANTE, 
    FDULTIMA_MODIFICACION, FCUSUARIO_MODIFICO
) VALUES 
(1, 4001, 'Carlos Martínez', 'Auditor Interno', 'carlos.martinez@example.com', 
 '555-1234', 'Auditoría', 'Pedro García', 'Email', 'Revisión rutinaria', 
 '2023-10-12', 'admin'),

(2, 4002, 'Luisa Fernández', 'Analista Financiero', 'luisa.fernandez@example.com', 
 '555-5678', 'Finanzas', 'Sofía Morales', 'Teléfono', 'Reporte financiero', 
 '2023-09-22', 'user123'),

(3, 4003, 'Mario Torres', 'Jefe de TI', 'mario.torres@example.com', 
 '555-8765', 'Tecnología', 'Elena García', 'Web', 'Auditoría de sistemas', 
 '2023-08-12', 'admin'),

(4, 4004, 'Sandra López', 'Responsable de Calidad', 'sandra.lopez@example.com', 
 '555-3456', 'Calidad', 'Juan Sánchez', 'Chat', 'Monitoreo de procesos', 
 '2023-07-26', 'support_user'),

(5, 4005, 'Ricardo Gómez', 'Especialista en Seguridad', 'ricardo.gomez@example.com', 
 '555-6789', 'Seguridad', 'Ana Torres', 'Email', 'Reporte de incidente', 
 '2023-06-13', 'user456');

/

INSERT INTO HONESTEL.TASUINVOLU_HON (
    FIFOLO_ID, FINVOLUCRADO_ID, FINVOLUCRADO_DESC, FDULTIMA_MODIFICACION, 
    FCUSUARIO_MODIFICO, FCNOMBRE_INVOLUCRADO, FCPUESTO_INVOLUCRADO, 
    FCCOMPANIA_INVOLUCRADO, FCHALLAZGO_1_INVOL, FCHALLAZGO_2_INVOL, 
    FCONSECUENCIA_INVOL, FCRESPON_EJEC_INVOL, FCFECHA_EJEC_INVOL, 
    FCNIVEL_MANDO_INVOL
) VALUES 
(1, 5001, 'Descripción del involucrado 1', '2023-10-15', 'admin', 
 'Roberto Sánchez', 'Gerente de Proyecto', 'Compañía ABC', 
 'Error en procedimiento', 'Falta de documentación', 'Retraso en entrega', 
 'María Gómez', '2023-10-20', 'Alto'),

(2, 5002, 'Descripción del involucrado 2', '2023-09-25', 'user123', 
 'Laura Martínez', 'Líder de Equipo', 'Compañía XYZ', 
 'Falta de recursos', 'Comunicación insuficiente', 'Disminución en calidad', 
 'Carlos Ramírez', '2023-09-30', 'Medio'),

(3, 5003, 'Descripción del involucrado 3', '2023-08-15', 'admin', 
 'Fernando Torres', 'Analista Senior', 'Tech Solutions', 
 'Datos incompletos', 'Procedimientos obsoletos', 'Incremento en errores', 
 'Sofía Pérez', '2023-08-20', 'Medio'),

(4, 5004, 'Descripción del involucrado 4', '2023-07-28', 'support_user', 
 'Isabel Ríos', 'Supervisor de Calidad', 'Secure Corp', 
 'Desviación en parámetros', 'Falta de supervisión', 'Pérdida de eficiencia', 
 'Jorge Hernández', '2023-07-30', 'Alto'),

(5, 5005, 'Descripción del involucrado 5', '2023-06-18', 'user456', 
 'Antonio Delgado', 'Especialista de Seguridad', 'Global Services', 
 'Fuga de información', 'Acceso no autorizado', 'Compromiso de datos', 
 'Marta López', '2023-06-22', 'Alto');
/

INSERT INTO HONESTEL.TASUFOLIOS2_HON (
    FIFOLO_ID, FIGRAVEDAD_ID, FIURGEN_ID, FDULTIMA_MODIFICACION, FCUSUARIO_MODIFICO
) VALUES 
(1, 1, 3, '2023-10-16', 'admin'),
(2, 2, 2, '2023-09-26', 'user123'),
(3, 3, 1, '2023-08-17', 'admin'),
(4, 2, 3, '2023-07-29', 'support_user'),
(5, 1, 2, '2023-06-19', 'user456');

/

INSERT INTO HONESTEL.TASUTMXDNXF_HON (
    FIFOLO_ID, FIDENUN_ID, FITEMA_ID, FCTEMA_DESC, FCCOMP_DESC, FDULTIMA_MODIFICACION, FCUSUARIO_MODIFICO
) VALUES 
(1, 2001, 1001, 'Falta de cumplimiento en políticas internas', 'Ausencia de seguimiento a normativas de control', 
 '2023-10-17', 'admin'),

(2, 2002, 1002, 'Uso inadecuado de recursos', 'Exceso en el uso de recursos asignados para proyectos específicos', 
 '2023-09-27', 'user123'),

(3, 2003, 1003, 'Conflicto de intereses no reportado', 'El involucrado tiene intereses en empresas externas', 
 '2023-08-18', 'admin'),

(4, 2004, 1004, 'Inconsistencias en reportes financieros', 'Discrepancias en los resultados trimestrales reportados', 
 '2023-07-30', 'support_user'),

(5, 2005, 1005, 'Incumplimiento en normas de seguridad', 'El personal omitió procedimientos de seguridad establecidos', 
 '2023-06-20', 'user456');


