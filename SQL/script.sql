

CREATE TABLE alumno (
  codigo int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombres varchar(100) NOT NULL,
  apellidos varchar(100) NOT NULL,
  edad int(11) NOT NULL,
  usuario varchar(100) NOT NULL,
  contrasena varchar(200) NOT NULL
) ENGINE=InnoDB ;

INSERT INTO `alumno` ( `nombres`, `apellidos`, `edad`, `usuario`, `contrasena`) VALUES
( 'LUIS', 'CLAUDIO', 169, 'luis', '123'),
( 'CESAR', 'TORRRES', 168, 'cesar', '456'),
( 'RAUL', 'RUI DIAZ', 26, '3', '3');





CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `ruc` varchar(11) DEFAULT NULL,
  `razon_social` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `representante` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;




INSERT INTO `clientes` (`idclientes`, `ruc`, `razon_social`, `direccion`, `email`, `representante`, `telefono`, `fecha_creacion`) VALUES
(1, '20505959516', 'INGEOMIN S.A.C.', 'PLG JAVIER PRADO NRO. 9269 URB. PORTALES DE JAVIER PRADO ', NULL, 'CARLOS TEVES / ELVIS ORTEGA', NULL, '2016-06-24 20:56:07'),
(2, '20505959516', 'INGEOMIN S.A.C.', 'PLG JAVIER PRADO NRO. 9269 URB. PORTALES DE JAVIER PRADO', NULL, 'CARLOS TEVES / ELVIS ORTEGA', '3513888', '2016-06-24 20:56:07'),
(3, '20107290177', 'MINERA COLQUISIRI S.A.', 'AV. DEL PARQUE NORTE NRO. 724 URB. CORPAC SAN ISIDRO - LIMA', 'luciaddt@colquisiri.com.pe', 'Lucia Diaz-Dulanto', '224-1234', '2016-06-24 20:56:07'),
(4, '20509512869', 'MINERA SHUNTUR S.A.C', 'Av. Argentina 1479', 'logistica@minerashuntur.com', 'Sergio Nosiglia', '336-5809', '2016-06-24 20:56:07'),
(5, '20504940129', 'ALICOMSER SRL', 'AV. ANGELICA GAMARRA NRO. 2023 URB. SANTO TOMAS DE GARAGAY', 'daniel.lopez@alicomser.com', 'LOPEZ DAVILA CRISPIN DANIEL', '5316017', '2016-06-24 20:56:07'),
(6, '20531028164', 'INGEODRILLING HUASCARAN S.A.C.', 'AV. 7 DE JUNIO NRO. 208 URB. LOS FICUS', 'jpcarranzaleandro@gmail.com', 'JUAN CARRANZA', '362 6732', '2016-06-24 20:56:07'),
(7, '20477247246', 'EMPRESA INDIVIDUAL DE RESP. LTDA', 'MZA. 20 LOTE. 8 URB. LA RINCONADA LA LIBERTAD - TRUJILLO - TRUJILLO', NULL, 'JAVIER CARRION VASQUEZ', '0051-44-9496134', '2016-06-24 20:56:07'),
(8, '20100471290', 'ROEDA S.A.', 'AV. BRASIL NRO. 203 LIMA - LIMA - LIMA', 'fmejia@roeda.com.pe', 'FABRICIO MEJIA', '4232297', '2016-06-24 20:56:07'),
(9, '20544672496', 'MAQPOWER SAC', 'CALLE 56A MZ 21 LT 11 APV CASA BLANCA (PARADERO 5 DE PROCERES) SJL - LIMA', 'ahilario@maqpowersac.com.pe', 'ALEXANDER HILARIO', '388-8747', '2016-06-24 20:56:07'),
(10, '20454971940', 'CHOQUE DRILLING PERU S.A.C.', 'MZ E LOTE 10 ASOC. JOSE C. MARIATEGUI', 'juanchoquedrilling@hotmail.com', 'JUAN CHOQUE', '989954933', '2016-06-24 20:56:07'),
(11, '20457362294', 'CORPORACION MINERA CENTAURO S.A.C.', 'AV. PEDRO MIOTTA N? 850 Z.I. INDUSTRIAL - SJM - LIMA', 'grodriguez@cmcentauro.com', 'GLADYS RODRIGUEZ', '276-8000', '2016-06-24 20:56:07'),
(12, '050124U69', 'DISTRIBUCION Y EDIFICACIONES UNIVERSALES SA DE CV', 'PRIVADA OCEANO PACIFICO N? 201 COL. LA FE SAN NICOLAS DE LOS GARZA, NUEVO LEON CP 66477 MEXICO', 'aposadas@dyeusa.com', 'ADRIANA POSADAS', '52 81 83117022', '2016-06-24 20:56:07'),
(13, '20519189080', 'ESEPER SAC', 'AV. EUTERPE N? 160 URB. OLIMPO - ATE - LIMA', 'lourdes.campos@esepersac.com', 'LOURDES CAMPOS', '435-2840      9', '2016-06-24 20:56:07'),
(14, '1008206G1', 'ROCK DRILL MINING S.A DE C.V', 'Av. Chichimeco 100-5 Parque Ind. Chichimeco - Jesus Mar?a, Aguascalientes, 20900 - MEXICO', 'samuel.romero@rockdrillgroup.com', 'SAMUEL ROMERO', '5,24491E+11', '2016-06-24 20:56:07'),
(15, '40217702', 'MATOS FUJIU MANUEL ALBERTO', 'JR. MANUEL JARAMILLO 249 ZONA B  - SAN JUAN DE MIRAFLORES - LIMA', NULL, 'MANUEL MATOS', '991 698 285', '2016-06-24 20:56:07'),
(16, '20134930650', 'HIDRAULICA ZAMALLOA EIRL', 'AV. LAS AMERICAS 1355 BALCONCILLO - LA VICTORIA - LIMA', 'ezamalloa@hidraulica-zamalloa.com', 'EDU ZAMALLOA', '717-5632    968', '2016-06-24 20:56:07'),
(17, '10082061G1', 'ROCK DRILL MINING S.A DE C.V', 'AV. CHICHIMECO 100-5 PARQUE IND. CHICHIMECO - JESUS MAR?A, AGUASCALIENTES, 20900 - MEXICO', 'samuel.romero@rockdrillgroup.com', 'SAMUEL ROMERO', '5,24491E+11', '2016-06-24 20:56:07'),
(18, '20536493353', 'CORPORATION MACHDRILL & SERVICES S.A.C', 'MZA. A-33 LOTE. 34 CULTURA PERUANA MODERNA - SANTA ANITA - LIMA', NULL, 'ANGEL ARELLANO', '3540375', '2016-06-24 20:56:08'),
(19, '20100056802', 'COMPA?IA MINERA CONDESTABLE S.A.', 'AV. MANUEL OLGUIN NRO. 501 INT. 803 URB. HARAS TYBER (COSTADO DEL JOCKEY) LIMA - LIMA - SANTIAGO DE', 'Anaiz.Navinta@spm.com', 'ANAIZ NAVINTA', '215-9900', '2016-06-24 20:56:08'),
(20, '20100147514', 'SOUTHERN PERU COPPER CORPORATION SUCURSAL DEL PERU', 'AV. CAMINOS DEL INCA N? 171 URB. CHACARILLA DEL ESTANQUE - SANTIAGO DE SURCO - LIMA', 'CPerfoD@SouthernPeru.com.pe', 'CRISTIAN MARQUEZ CARNERO', '512-0440', '2016-06-24 20:56:08'),
(21, '20553345015', 'HMQ DRILLING Y CONSTRUCCION SAC', 'MZ A LT 1 APV AGRUPACION FAMILIAR RINCONADA SAN JUAN DE LURIGANCHO - LIMA', 'hugo.masco@hmqdrilling.com', 'HUGO MASCO', '389-4568     94', '2016-06-24 20:56:08'),
(22, '20100110513', 'COMPA?IA MINERA MILPO S.A.A.', 'AV. SAN BORJA NORTE N? 523 -  SAN BORJA - LIMA - LIMA', 'guillermo.garces@milpo.com', 'GUILLERMO GARCES', '211-5500    211', '2016-06-24 20:56:08'),
(23, '20518789733', 'MVM DRILLING SAC', 'CALLE LIZANDRO DE LA PUENTE MZ D LT 14  URB. SANTA LEONOR - CHORRILLOS - LIMA', 'easro_76@hotmail.com', 'EDWIN ASANZA', '467-5362', '2016-06-24 20:56:08'),
(24, '20467587146', 'JRC MINERIA Y CONSTRUCCION SAC', 'AV. LOS PRECURSORES N? 244 INT. 302  URB. LAS LEYENDAS - SAN MIGUEL - LIMA', 'jolivera@jrcing.com', 'JANET GALVEZ', '651-0202   /', '2016-06-24 20:56:08'),
(25, '20137025354', 'CIA. MINERA PODEROSA S.A.', 'AV. PRIMAVERA NRO. 834, URB.CHACARILLA DEL ESTANQUE - SANTIAGO DE SURCO - LIMA', 'edelgado@poderosa.com.pe', 'RENZO DELGADO', '275-5577  617-2', '2016-06-24 20:56:08'),
(26, '20120332067', 'CN MINERIA Y CONSTRUCCION S.A.C', 'AV. MARISCAL NIETO N? 119 SAN LUIS', 'jcruz@cnsac.com.pe', 'JUAN CRUS MUCHA', '612-8989', '2016-06-24 20:56:08'),
(27, '20537442141', 'ECC MINING TRACKLES E.I.R.L.', 'AV NESTOR GAMBETA MZA. D LOTE. 11 PROVIV. VALLE HERMOZO II - CALLAO - CALLAO - VENTANILLA', NULL, 'WILSON CASTILLO', '3040615', '2016-06-24 20:56:08'),
(28, '20510334699', 'EXPLORACIONES ANDINAS S.A.C', 'JR. TIZIANO NRO. 301 - SAN BORJA - LIMA', 'sberrocal@laytaruma.com.pe', 'SAULO BERROCAL', '2190680', '2016-06-24 20:56:08'),
(29, '20100313899', 'ZICSA CONTRATISTAS GENERALES S.A.', 'JR. BOLOGNESI NRO. 125 INT. 203 - MIRAFLORE - LIMA', 'rromero@zicsa.com', 'RAUL ROMERO', '4456689', '2016-06-24 20:56:08'),
(30, '20524124476', 'MVS - INGENIERIA MINERA S.A.C.', 'MZA. K1 LOTE. 28 URB. LOS PORTALES DE J. PRADO - ATE - LIMA', NULL, 'GUSTAVO GAVILAN', '3512557', '2016-06-24 20:56:08'),
(31, '20515758225', 'CONPERMIN S.A.C.', 'AV. VENUS 511 URB EL TREBOL ET 2 - LOS OLIVOS - LIMA', NULL, 'MICHAEL RIVERA', '054-431145', '2016-06-24 20:56:08'),
(32, '20489348625', 'SERVICIOS EN CONSTRUCCION Y MINERIA DEL CENTRO SCR', 'CIR. TUPAC AMARU NRO. 354 PASCO-PASCO-CHAUPIMARCA', 'secominc_1@yahoo.es', 'EFRAIN ESTRADA', '423660', '2016-06-24 20:56:08'),
(33, '20100102171', 'Sociedad Minera Austria Duvaz S.A.C.', 'CAL. MANUEL GONZALES OLAECHEA NRO. 401 URB. LIMATAMBO - SAN ISIDRO (CRUCE ALT. CDRA. 4 AV. ARAMBURU)', 'pordonez@austriaduvaz.com', 'PAMELA ORDO?EZ CAYCHO', '206-6000', '2016-06-24 20:56:08'),
(34, '20100177421', 'COMPA?IA MINERA SAN IGNACIO DE MOROCOCHA S.A.A.', 'AV. BENAVIDES N? 1579 INT 9 MIRAFLORES LIMA LIMA', 'lvillarreal@simsa.com.pe', 'LUIS VILLARREAL', '6154400', '2016-06-24 20:56:08'),
(35, '20153288519', 'COMPANIA MINERA SAN VALENTIN S.A.', 'JR. OREJUELAS NRO. 271 URB. PROLONG BENAVIDES', 'fperez_ciamsv@yahoo.es', 'Fernando P?rez Cabrera', '707-3700', '2016-06-24 20:56:08'),
(36, '20335508981', 'CORETECH S.A.', 'CALLE QUILLA 140 URB. SAN JUAN BAUTISTA DE VILLA C', 'wvilla@coretech.com.pe', 'WILDER VILLA', '255-5701', '2016-06-24 20:56:08');
