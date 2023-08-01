/*
 Navicat Premium Data Transfer

 Source Server         : Lidia
 Source Server Type    : PostgreSQL
 Source Server Version : 140008
 Source Host           : 162.240.73.135:5432
 Source Catalog        : desis
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140008
 File Encoding         : 65001

 Date: 01/08/2023 01:39:35
*/


-- ----------------------------
-- Sequence structure for candidatos_i_idcandidato_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."candidatos_i_idcandidato_seq";
CREATE SEQUENCE "public"."candidatos_i_idcandidato_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for votaciones_i_idvotacion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."votaciones_i_idvotacion_seq";
CREATE SEQUENCE "public"."votaciones_i_idvotacion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for candidatos
-- ----------------------------
DROP TABLE IF EXISTS "public"."candidatos";
CREATE TABLE "public"."candidatos" (
  "i_idcandidato" int4 NOT NULL DEFAULT nextval('candidatos_i_idcandidato_seq'::regclass),
  "v_nombres" varchar(255) COLLATE "pg_catalog"."default",
  "b_activo" bool DEFAULT true
)
;

-- ----------------------------
-- Records of candidatos
-- ----------------------------
INSERT INTO "public"."candidatos" VALUES (1, 'Luis Enrique Fernndez', 't');
INSERT INTO "public"."candidatos" VALUES (2, 'Javier Rus', 't');
INSERT INTO "public"."candidatos" VALUES (4, 'Emiliano Solis', 't');
INSERT INTO "public"."candidatos" VALUES (5, 'Ruth Ramirez', 't');
INSERT INTO "public"."candidatos" VALUES (6, 'Laila Tome', 't');
INSERT INTO "public"."candidatos" VALUES (3, 'Josue Palomino', 'f');

-- ----------------------------
-- Table structure for comunas
-- ----------------------------
DROP TABLE IF EXISTS "public"."comunas";
CREATE TABLE "public"."comunas" (
  "i_idcomuna" int8 NOT NULL,
  "v_nombre" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "i_idregion" int8,
  "b_activo" bool DEFAULT true
)
;

-- ----------------------------
-- Records of comunas
-- ----------------------------
INSERT INTO "public"."comunas" VALUES (65, 'San Antonio', 5, 't');
INSERT INTO "public"."comunas" VALUES (66, 'Santo Domingo', 5, 't');
INSERT INTO "public"."comunas" VALUES (67, 'Catemu', 5, 't');
INSERT INTO "public"."comunas" VALUES (68, 'Llaillay', 5, 't');
INSERT INTO "public"."comunas" VALUES (69, 'Panquehue', 5, 't');
INSERT INTO "public"."comunas" VALUES (70, 'Putaendo', 5, 't');
INSERT INTO "public"."comunas" VALUES (71, 'San Felipe', 5, 't');
INSERT INTO "public"."comunas" VALUES (72, 'Santa María', 5, 't');
INSERT INTO "public"."comunas" VALUES (73, 'Casablanca', 5, 't');
INSERT INTO "public"."comunas" VALUES (74, 'Concón', 5, 't');
INSERT INTO "public"."comunas" VALUES (75, 'Juan Fernández', 5, 't');
INSERT INTO "public"."comunas" VALUES (76, 'Puchuncaví', 5, 't');
INSERT INTO "public"."comunas" VALUES (77, 'Quilpué', 5, 't');
INSERT INTO "public"."comunas" VALUES (78, 'Quintero', 5, 't');
INSERT INTO "public"."comunas" VALUES (79, 'Valparaíso', 5, 't');
INSERT INTO "public"."comunas" VALUES (80, 'Villa Alemana', 5, 't');
INSERT INTO "public"."comunas" VALUES (81, 'Viña del Mar', 5, 't');
INSERT INTO "public"."comunas" VALUES (134, 'Codegua', 6, 't');
INSERT INTO "public"."comunas" VALUES (135, 'Coínco', 6, 't');
INSERT INTO "public"."comunas" VALUES (136, 'Coltauco', 6, 't');
INSERT INTO "public"."comunas" VALUES (137, 'Doñihue', 6, 't');
INSERT INTO "public"."comunas" VALUES (138, 'Graneros', 6, 't');
INSERT INTO "public"."comunas" VALUES (139, 'Las Cabras', 6, 't');
INSERT INTO "public"."comunas" VALUES (140, 'Machalí', 6, 't');
INSERT INTO "public"."comunas" VALUES (141, 'Malloa', 6, 't');
INSERT INTO "public"."comunas" VALUES (142, 'Mostazal', 6, 't');
INSERT INTO "public"."comunas" VALUES (143, 'Olivar', 6, 't');
INSERT INTO "public"."comunas" VALUES (144, 'Peumo', 6, 't');
INSERT INTO "public"."comunas" VALUES (145, 'Pichidegua', 6, 't');
INSERT INTO "public"."comunas" VALUES (146, 'Quinta de Tilcoco', 6, 't');
INSERT INTO "public"."comunas" VALUES (147, 'Rancagua', 6, 't');
INSERT INTO "public"."comunas" VALUES (148, 'Rengo', 6, 't');
INSERT INTO "public"."comunas" VALUES (150, 'San Vicente de Tagua Tagua', 6, 't');
INSERT INTO "public"."comunas" VALUES (151, 'La Estrella', 6, 't');
INSERT INTO "public"."comunas" VALUES (152, 'Litueche', 6, 't');
INSERT INTO "public"."comunas" VALUES (153, 'Marchihue', 6, 't');
INSERT INTO "public"."comunas" VALUES (154, 'Navidad', 6, 't');
INSERT INTO "public"."comunas" VALUES (156, 'Pichilemu', 6, 't');
INSERT INTO "public"."comunas" VALUES (157, 'Chépica', 6, 't');
INSERT INTO "public"."comunas" VALUES (158, 'Chimbarongo', 6, 't');
INSERT INTO "public"."comunas" VALUES (159, 'Lolol', 6, 't');
INSERT INTO "public"."comunas" VALUES (160, 'Nancagua', 6, 't');
INSERT INTO "public"."comunas" VALUES (161, 'Palmilla', 6, 't');
INSERT INTO "public"."comunas" VALUES (162, 'Peralillo', 6, 't');
INSERT INTO "public"."comunas" VALUES (163, 'Placilla', 6, 't');
INSERT INTO "public"."comunas" VALUES (164, 'Pumanque', 6, 't');
INSERT INTO "public"."comunas" VALUES (165, 'San Fernando', 6, 't');
INSERT INTO "public"."comunas" VALUES (166, 'Santa Cruz', 6, 't');
INSERT INTO "public"."comunas" VALUES (227, 'Santa Juana', 8, 't');
INSERT INTO "public"."comunas" VALUES (228, 'Talcahuano', 8, 't');
INSERT INTO "public"."comunas" VALUES (229, 'Tomé', 8, 't');
INSERT INTO "public"."comunas" VALUES (346, 'Reñaca', 5, 't');
INSERT INTO "public"."comunas" VALUES (350, 'Cabildo', 5, 't');
INSERT INTO "public"."comunas" VALUES (351, 'Cobquecura', 16, 't');
INSERT INTO "public"."comunas" VALUES (352, 'Coelemu', 16, 't');
INSERT INTO "public"."comunas" VALUES (353, 'Ninhue', 16, 't');
INSERT INTO "public"."comunas" VALUES (354, 'Portezuelo', 16, 't');
INSERT INTO "public"."comunas" VALUES (355, 'Quirihue', 16, 't');
INSERT INTO "public"."comunas" VALUES (356, 'Ránquil', 16, 't');
INSERT INTO "public"."comunas" VALUES (357, 'Trehuaco', 16, 't');
INSERT INTO "public"."comunas" VALUES (358, 'Bulnes', 16, 't');
INSERT INTO "public"."comunas" VALUES (359, 'Chillán Viejo', 16, 't');
INSERT INTO "public"."comunas" VALUES (360, 'Chillán', 16, 't');
INSERT INTO "public"."comunas" VALUES (361, 'El Carmen', 16, 't');
INSERT INTO "public"."comunas" VALUES (362, 'Pemuco', 16, 't');
INSERT INTO "public"."comunas" VALUES (363, 'Pinto', 16, 't');
INSERT INTO "public"."comunas" VALUES (364, 'Quillón', 16, 't');
INSERT INTO "public"."comunas" VALUES (365, 'San Ignacio', 16, 't');
INSERT INTO "public"."comunas" VALUES (366, 'Yungay', 16, 't');
INSERT INTO "public"."comunas" VALUES (367, 'Coihueco', 16, 't');
INSERT INTO "public"."comunas" VALUES (368, 'Ñiquén', 16, 't');
INSERT INTO "public"."comunas" VALUES (369, 'San Carlos', 16, 't');
INSERT INTO "public"."comunas" VALUES (370, 'San Fabián', 16, 't');
INSERT INTO "public"."comunas" VALUES (371, 'San Nicolás', 16, 't');
INSERT INTO "public"."comunas" VALUES (230, 'Bulnes', 8, 'f');
INSERT INTO "public"."comunas" VALUES (231, 'Chillán', 8, 'f');
INSERT INTO "public"."comunas" VALUES (232, 'Chillán Viejo', 8, 'f');
INSERT INTO "public"."comunas" VALUES (233, 'Cobquecura', 8, 'f');
INSERT INTO "public"."comunas" VALUES (234, 'Coelemu', 8, 'f');
INSERT INTO "public"."comunas" VALUES (235, 'Coihueco', 8, 'f');
INSERT INTO "public"."comunas" VALUES (236, 'El Carmen', 8, 'f');
INSERT INTO "public"."comunas" VALUES (237, 'Ninhue', 8, 'f');
INSERT INTO "public"."comunas" VALUES (238, 'Ñiquen', 8, 'f');
INSERT INTO "public"."comunas" VALUES (239, 'Pemuco', 8, 'f');
INSERT INTO "public"."comunas" VALUES (240, 'Pinto', 8, 'f');
INSERT INTO "public"."comunas" VALUES (241, 'Portezuelo', 8, 'f');
INSERT INTO "public"."comunas" VALUES (242, 'Quillón', 8, 'f');
INSERT INTO "public"."comunas" VALUES (243, 'Quirihue', 8, 'f');
INSERT INTO "public"."comunas" VALUES (244, 'Ránquil', 8, 'f');
INSERT INTO "public"."comunas" VALUES (245, 'San Carlos', 8, 'f');
INSERT INTO "public"."comunas" VALUES (246, 'San Fabián', 8, 'f');
INSERT INTO "public"."comunas" VALUES (155, 'Paredones', 6, 't');
INSERT INTO "public"."comunas" VALUES (149, 'Requinoa', 6, 't');
INSERT INTO "public"."comunas" VALUES (347, 'Curauma', 5, 't');
INSERT INTO "public"."comunas" VALUES (348, 'Maipo', 13, 't');
INSERT INTO "public"."comunas" VALUES (349, 'Rodelillo', 5, 't');
INSERT INTO "public"."comunas" VALUES (5, 'Alto Hospicio', 1, 't');
INSERT INTO "public"."comunas" VALUES (6, 'Iquique', 1, 't');
INSERT INTO "public"."comunas" VALUES (7, 'Camina', 1, 't');
INSERT INTO "public"."comunas" VALUES (8, 'Colchane', 1, 't');
INSERT INTO "public"."comunas" VALUES (9, 'Huara', 1, 't');
INSERT INTO "public"."comunas" VALUES (10, 'Pica', 1, 't');
INSERT INTO "public"."comunas" VALUES (11, 'Pozo Almonte', 1, 't');
INSERT INTO "public"."comunas" VALUES (12, 'Antofagasta', 2, 't');
INSERT INTO "public"."comunas" VALUES (13, 'Mejillones', 2, 't');
INSERT INTO "public"."comunas" VALUES (14, 'Sierra Gorda', 2, 't');
INSERT INTO "public"."comunas" VALUES (15, 'Taltal', 2, 't');
INSERT INTO "public"."comunas" VALUES (16, 'Calama', 2, 't');
INSERT INTO "public"."comunas" VALUES (17, 'Ollague', 2, 't');
INSERT INTO "public"."comunas" VALUES (18, 'San Pedro de Atacama', 2, 't');
INSERT INTO "public"."comunas" VALUES (19, 'María Elena', 2, 't');
INSERT INTO "public"."comunas" VALUES (20, 'Tocopilla', 2, 't');
INSERT INTO "public"."comunas" VALUES (21, 'Chañaral', 3, 't');
INSERT INTO "public"."comunas" VALUES (22, 'Diego de Almagro', 3, 't');
INSERT INTO "public"."comunas" VALUES (23, 'Caldera', 3, 't');
INSERT INTO "public"."comunas" VALUES (24, 'Copiapó', 3, 't');
INSERT INTO "public"."comunas" VALUES (25, 'Tierra Amarilla', 3, 't');
INSERT INTO "public"."comunas" VALUES (26, 'Alto del Carmen', 3, 't');
INSERT INTO "public"."comunas" VALUES (27, 'Freirina', 3, 't');
INSERT INTO "public"."comunas" VALUES (28, 'Huasco', 3, 't');
INSERT INTO "public"."comunas" VALUES (29, 'Vallenar', 3, 't');
INSERT INTO "public"."comunas" VALUES (30, 'Canela', 4, 't');
INSERT INTO "public"."comunas" VALUES (31, 'Illapel', 4, 't');
INSERT INTO "public"."comunas" VALUES (32, 'Los Vilos', 4, 't');
INSERT INTO "public"."comunas" VALUES (33, 'Salamanca', 4, 't');
INSERT INTO "public"."comunas" VALUES (34, 'Andacollo', 4, 't');
INSERT INTO "public"."comunas" VALUES (35, 'Coquimbo', 4, 't');
INSERT INTO "public"."comunas" VALUES (36, 'La Higuera', 4, 't');
INSERT INTO "public"."comunas" VALUES (37, 'La Serena', 4, 't');
INSERT INTO "public"."comunas" VALUES (38, 'Paihuaco', 4, 't');
INSERT INTO "public"."comunas" VALUES (39, 'Vicuña', 4, 't');
INSERT INTO "public"."comunas" VALUES (40, 'Combarbalá', 4, 't');
INSERT INTO "public"."comunas" VALUES (41, 'Monte Patria', 4, 't');
INSERT INTO "public"."comunas" VALUES (42, 'Ovalle', 4, 't');
INSERT INTO "public"."comunas" VALUES (43, 'Punitaqui', 4, 't');
INSERT INTO "public"."comunas" VALUES (44, 'Río Hurtado', 4, 't');
INSERT INTO "public"."comunas" VALUES (45, 'Isla de Pascua', 5, 't');
INSERT INTO "public"."comunas" VALUES (46, 'Calle Larga', 5, 't');
INSERT INTO "public"."comunas" VALUES (47, 'Los Andes', 5, 't');
INSERT INTO "public"."comunas" VALUES (48, 'Rinconada', 5, 't');
INSERT INTO "public"."comunas" VALUES (49, 'San Esteban', 5, 't');
INSERT INTO "public"."comunas" VALUES (50, 'La Ligua', 5, 't');
INSERT INTO "public"."comunas" VALUES (51, 'Papudo', 5, 't');
INSERT INTO "public"."comunas" VALUES (52, 'Petorca', 5, 't');
INSERT INTO "public"."comunas" VALUES (53, 'Zapallar', 5, 't');
INSERT INTO "public"."comunas" VALUES (54, 'Hijuelas', 5, 't');
INSERT INTO "public"."comunas" VALUES (55, 'La Calera', 5, 't');
INSERT INTO "public"."comunas" VALUES (56, 'La Cruz', 5, 't');
INSERT INTO "public"."comunas" VALUES (57, 'Limache', 5, 't');
INSERT INTO "public"."comunas" VALUES (58, 'Nogales', 5, 't');
INSERT INTO "public"."comunas" VALUES (59, 'Olmué', 5, 't');
INSERT INTO "public"."comunas" VALUES (60, 'Quillota', 5, 't');
INSERT INTO "public"."comunas" VALUES (61, 'Algarrobo', 5, 't');
INSERT INTO "public"."comunas" VALUES (62, 'Cartagena', 5, 't');
INSERT INTO "public"."comunas" VALUES (63, 'El Quisco', 5, 't');
INSERT INTO "public"."comunas" VALUES (64, 'El Tabo', 5, 't');
INSERT INTO "public"."comunas" VALUES (82, 'Colina', 13, 't');
INSERT INTO "public"."comunas" VALUES (83, 'Lampa', 13, 't');
INSERT INTO "public"."comunas" VALUES (84, 'Tiltil', 13, 't');
INSERT INTO "public"."comunas" VALUES (85, 'Pirque', 13, 't');
INSERT INTO "public"."comunas" VALUES (86, 'Puente Alto', 13, 't');
INSERT INTO "public"."comunas" VALUES (87, 'San José de Maipo', 13, 't');
INSERT INTO "public"."comunas" VALUES (88, 'Buin', 13, 't');
INSERT INTO "public"."comunas" VALUES (89, 'Calera de Tango', 13, 't');
INSERT INTO "public"."comunas" VALUES (90, 'Paine', 13, 't');
INSERT INTO "public"."comunas" VALUES (91, 'San Bernardo', 13, 't');
INSERT INTO "public"."comunas" VALUES (92, 'Alhué', 13, 't');
INSERT INTO "public"."comunas" VALUES (93, 'Curacaví', 13, 't');
INSERT INTO "public"."comunas" VALUES (94, 'María Pinto', 13, 't');
INSERT INTO "public"."comunas" VALUES (95, 'Melipilla', 13, 't');
INSERT INTO "public"."comunas" VALUES (96, 'San Pedro', 13, 't');
INSERT INTO "public"."comunas" VALUES (97, 'Cerrillos', 13, 't');
INSERT INTO "public"."comunas" VALUES (98, 'Cerro Navia', 13, 't');
INSERT INTO "public"."comunas" VALUES (99, 'Conchalí', 13, 't');
INSERT INTO "public"."comunas" VALUES (100, 'El Bosque', 13, 't');
INSERT INTO "public"."comunas" VALUES (101, 'Estación Central', 13, 't');
INSERT INTO "public"."comunas" VALUES (102, 'Huechuraba', 13, 't');
INSERT INTO "public"."comunas" VALUES (103, 'Independencia', 13, 't');
INSERT INTO "public"."comunas" VALUES (104, 'La Cisterna', 13, 't');
INSERT INTO "public"."comunas" VALUES (1, 'Arica', 15, 't');
INSERT INTO "public"."comunas" VALUES (2, 'Camarones', 15, 't');
INSERT INTO "public"."comunas" VALUES (3, 'General Lagos', 15, 't');
INSERT INTO "public"."comunas" VALUES (4, 'Putre', 15, 't');
INSERT INTO "public"."comunas" VALUES (167, 'Cauquenes', 7, 't');
INSERT INTO "public"."comunas" VALUES (168, 'Chanco', 7, 't');
INSERT INTO "public"."comunas" VALUES (169, 'Pelluhue', 7, 't');
INSERT INTO "public"."comunas" VALUES (170, 'Curicó', 7, 't');
INSERT INTO "public"."comunas" VALUES (171, 'Hualañé', 7, 't');
INSERT INTO "public"."comunas" VALUES (172, 'Licantén', 7, 't');
INSERT INTO "public"."comunas" VALUES (173, 'Molina', 7, 't');
INSERT INTO "public"."comunas" VALUES (174, 'Rauco', 7, 't');
INSERT INTO "public"."comunas" VALUES (175, 'Romeral', 7, 't');
INSERT INTO "public"."comunas" VALUES (176, 'Sagrada Familia', 7, 't');
INSERT INTO "public"."comunas" VALUES (177, 'Teno', 7, 't');
INSERT INTO "public"."comunas" VALUES (178, 'Vichuquén', 7, 't');
INSERT INTO "public"."comunas" VALUES (179, 'Colbún', 7, 't');
INSERT INTO "public"."comunas" VALUES (180, 'Linares', 7, 't');
INSERT INTO "public"."comunas" VALUES (181, 'Longaví', 7, 't');
INSERT INTO "public"."comunas" VALUES (182, 'Parral', 7, 't');
INSERT INTO "public"."comunas" VALUES (183, 'Retiro', 7, 't');
INSERT INTO "public"."comunas" VALUES (184, 'San Javier', 7, 't');
INSERT INTO "public"."comunas" VALUES (185, 'Villa Alegre', 7, 't');
INSERT INTO "public"."comunas" VALUES (186, 'Yerbas Buenas', 7, 't');
INSERT INTO "public"."comunas" VALUES (187, 'Constitución', 7, 't');
INSERT INTO "public"."comunas" VALUES (188, 'Curepto', 7, 't');
INSERT INTO "public"."comunas" VALUES (189, 'Empedrado', 7, 't');
INSERT INTO "public"."comunas" VALUES (190, 'Maule', 7, 't');
INSERT INTO "public"."comunas" VALUES (191, 'Pelarco', 7, 't');
INSERT INTO "public"."comunas" VALUES (192, 'Pencahue', 7, 't');
INSERT INTO "public"."comunas" VALUES (193, 'Río Claro', 7, 't');
INSERT INTO "public"."comunas" VALUES (194, 'San Clemente', 7, 't');
INSERT INTO "public"."comunas" VALUES (195, 'San Rafael', 7, 't');
INSERT INTO "public"."comunas" VALUES (196, 'Talca', 7, 't');
INSERT INTO "public"."comunas" VALUES (197, 'Arauco', 8, 't');
INSERT INTO "public"."comunas" VALUES (198, 'Cañete', 8, 't');
INSERT INTO "public"."comunas" VALUES (199, 'Contulmo', 8, 't');
INSERT INTO "public"."comunas" VALUES (200, 'Curanilahue', 8, 't');
INSERT INTO "public"."comunas" VALUES (201, 'Lebu', 8, 't');
INSERT INTO "public"."comunas" VALUES (202, 'Los Álamos', 8, 't');
INSERT INTO "public"."comunas" VALUES (203, 'Tirúa', 8, 't');
INSERT INTO "public"."comunas" VALUES (204, 'Alto Biobío', 8, 't');
INSERT INTO "public"."comunas" VALUES (205, 'Antuco', 8, 't');
INSERT INTO "public"."comunas" VALUES (206, 'Cabrero', 8, 't');
INSERT INTO "public"."comunas" VALUES (207, 'Laja', 8, 't');
INSERT INTO "public"."comunas" VALUES (208, 'Los Ángeles', 8, 't');
INSERT INTO "public"."comunas" VALUES (209, 'Mulchén', 8, 't');
INSERT INTO "public"."comunas" VALUES (210, 'Nacimiento', 8, 't');
INSERT INTO "public"."comunas" VALUES (211, 'Negrete', 8, 't');
INSERT INTO "public"."comunas" VALUES (212, 'Quilaco', 8, 't');
INSERT INTO "public"."comunas" VALUES (213, 'Quilleco', 8, 't');
INSERT INTO "public"."comunas" VALUES (214, 'San Rosendo', 8, 't');
INSERT INTO "public"."comunas" VALUES (215, 'Santa Bárbara', 8, 't');
INSERT INTO "public"."comunas" VALUES (216, 'Tucapel', 8, 't');
INSERT INTO "public"."comunas" VALUES (217, 'Yumbel', 8, 't');
INSERT INTO "public"."comunas" VALUES (218, 'Chiguayante', 8, 't');
INSERT INTO "public"."comunas" VALUES (219, 'Concepción', 8, 't');
INSERT INTO "public"."comunas" VALUES (220, 'Coronel', 8, 't');
INSERT INTO "public"."comunas" VALUES (221, 'Florida', 8, 't');
INSERT INTO "public"."comunas" VALUES (222, 'Hualpén', 8, 't');
INSERT INTO "public"."comunas" VALUES (223, 'Hualqui', 8, 't');
INSERT INTO "public"."comunas" VALUES (224, 'Lota', 8, 't');
INSERT INTO "public"."comunas" VALUES (225, 'Penco', 8, 't');
INSERT INTO "public"."comunas" VALUES (226, 'San Pedro de La Paz', 8, 't');
INSERT INTO "public"."comunas" VALUES (105, 'La Granja', 13, 't');
INSERT INTO "public"."comunas" VALUES (106, 'La Florida', 13, 't');
INSERT INTO "public"."comunas" VALUES (107, 'La Pintana', 13, 't');
INSERT INTO "public"."comunas" VALUES (108, 'La Reina', 13, 't');
INSERT INTO "public"."comunas" VALUES (109, 'Las Condes', 13, 't');
INSERT INTO "public"."comunas" VALUES (110, 'Lo Barnechea', 13, 't');
INSERT INTO "public"."comunas" VALUES (111, 'Lo Espejo', 13, 't');
INSERT INTO "public"."comunas" VALUES (112, 'Lo Prado', 13, 't');
INSERT INTO "public"."comunas" VALUES (113, 'Macul', 13, 't');
INSERT INTO "public"."comunas" VALUES (114, 'Maipú', 13, 't');
INSERT INTO "public"."comunas" VALUES (115, 'Ñuñoa', 13, 't');
INSERT INTO "public"."comunas" VALUES (116, 'Pedro Aguirre Cerda', 13, 't');
INSERT INTO "public"."comunas" VALUES (117, 'Peñalolén', 13, 't');
INSERT INTO "public"."comunas" VALUES (118, 'Providencia', 13, 't');
INSERT INTO "public"."comunas" VALUES (119, 'Pudahuel', 13, 't');
INSERT INTO "public"."comunas" VALUES (120, 'Quilicura', 13, 't');
INSERT INTO "public"."comunas" VALUES (121, 'Quinta Normal', 13, 't');
INSERT INTO "public"."comunas" VALUES (122, 'Recoleta', 13, 't');
INSERT INTO "public"."comunas" VALUES (123, 'Renca', 13, 't');
INSERT INTO "public"."comunas" VALUES (124, 'San Miguel', 13, 't');
INSERT INTO "public"."comunas" VALUES (125, 'San Joaquín', 13, 't');
INSERT INTO "public"."comunas" VALUES (126, 'San Ramón', 13, 't');
INSERT INTO "public"."comunas" VALUES (127, 'Santiago', 13, 't');
INSERT INTO "public"."comunas" VALUES (128, 'Vitacura', 13, 't');
INSERT INTO "public"."comunas" VALUES (129, 'El Monte', 13, 't');
INSERT INTO "public"."comunas" VALUES (130, 'Isla de Maipo', 13, 't');
INSERT INTO "public"."comunas" VALUES (131, 'Padre Hurtado', 13, 't');
INSERT INTO "public"."comunas" VALUES (132, 'Peñaflor', 13, 't');
INSERT INTO "public"."comunas" VALUES (133, 'Talagante', 13, 't');
INSERT INTO "public"."comunas" VALUES (251, 'Carahue', 9, 't');
INSERT INTO "public"."comunas" VALUES (252, 'Cholchol', 9, 't');
INSERT INTO "public"."comunas" VALUES (253, 'Cunco', 9, 't');
INSERT INTO "public"."comunas" VALUES (254, 'Curarrehue', 9, 't');
INSERT INTO "public"."comunas" VALUES (255, 'Freire', 9, 't');
INSERT INTO "public"."comunas" VALUES (256, 'Galvarino', 9, 't');
INSERT INTO "public"."comunas" VALUES (257, 'Gorbea', 9, 't');
INSERT INTO "public"."comunas" VALUES (258, 'Lautaro', 9, 't');
INSERT INTO "public"."comunas" VALUES (259, 'Loncoche', 9, 't');
INSERT INTO "public"."comunas" VALUES (260, 'Melipeuco', 9, 't');
INSERT INTO "public"."comunas" VALUES (261, 'Nueva Imperial', 9, 't');
INSERT INTO "public"."comunas" VALUES (262, 'Padre Las Casas', 9, 't');
INSERT INTO "public"."comunas" VALUES (263, 'Perquenco', 9, 't');
INSERT INTO "public"."comunas" VALUES (264, 'Pitrufquén', 9, 't');
INSERT INTO "public"."comunas" VALUES (265, 'Pucón', 9, 't');
INSERT INTO "public"."comunas" VALUES (266, 'Saavedra', 9, 't');
INSERT INTO "public"."comunas" VALUES (267, 'Temuco', 9, 't');
INSERT INTO "public"."comunas" VALUES (268, 'Teodoro Schmidt', 9, 't');
INSERT INTO "public"."comunas" VALUES (269, 'Toltén', 9, 't');
INSERT INTO "public"."comunas" VALUES (270, 'Vilcún', 9, 't');
INSERT INTO "public"."comunas" VALUES (271, 'Villarrica', 9, 't');
INSERT INTO "public"."comunas" VALUES (272, 'Angol', 9, 't');
INSERT INTO "public"."comunas" VALUES (273, 'Collipulli', 9, 't');
INSERT INTO "public"."comunas" VALUES (274, 'Curacautín', 9, 't');
INSERT INTO "public"."comunas" VALUES (275, 'Ercilla', 9, 't');
INSERT INTO "public"."comunas" VALUES (276, 'Lonquimay', 9, 't');
INSERT INTO "public"."comunas" VALUES (277, 'Los Sauces', 9, 't');
INSERT INTO "public"."comunas" VALUES (278, 'Lumaco', 9, 't');
INSERT INTO "public"."comunas" VALUES (279, 'Purén', 9, 't');
INSERT INTO "public"."comunas" VALUES (280, 'Renaico', 9, 't');
INSERT INTO "public"."comunas" VALUES (281, 'Traiguén', 9, 't');
INSERT INTO "public"."comunas" VALUES (282, 'Victoria', 9, 't');
INSERT INTO "public"."comunas" VALUES (295, 'Ancud', 10, 't');
INSERT INTO "public"."comunas" VALUES (296, 'Castro', 10, 't');
INSERT INTO "public"."comunas" VALUES (297, 'Chonchi', 10, 't');
INSERT INTO "public"."comunas" VALUES (298, 'Curaco de Vélez', 10, 't');
INSERT INTO "public"."comunas" VALUES (299, 'Dalcahue', 10, 't');
INSERT INTO "public"."comunas" VALUES (300, 'Puqueldón', 10, 't');
INSERT INTO "public"."comunas" VALUES (301, 'Queilén', 10, 't');
INSERT INTO "public"."comunas" VALUES (302, 'Quemchi', 10, 't');
INSERT INTO "public"."comunas" VALUES (303, 'Quellón', 10, 't');
INSERT INTO "public"."comunas" VALUES (304, 'Quinchao', 10, 't');
INSERT INTO "public"."comunas" VALUES (305, 'Calbuco', 10, 't');
INSERT INTO "public"."comunas" VALUES (306, 'Cochamó', 10, 't');
INSERT INTO "public"."comunas" VALUES (307, 'Fresia', 10, 't');
INSERT INTO "public"."comunas" VALUES (308, 'Frutillar', 10, 't');
INSERT INTO "public"."comunas" VALUES (309, 'Llanquihue', 10, 't');
INSERT INTO "public"."comunas" VALUES (310, 'Los Muermos', 10, 't');
INSERT INTO "public"."comunas" VALUES (311, 'Maullín', 10, 't');
INSERT INTO "public"."comunas" VALUES (312, 'Puerto Montt', 10, 't');
INSERT INTO "public"."comunas" VALUES (313, 'Puerto Varas', 10, 't');
INSERT INTO "public"."comunas" VALUES (314, 'Osorno', 10, 't');
INSERT INTO "public"."comunas" VALUES (316, 'Purranque', 10, 't');
INSERT INTO "public"."comunas" VALUES (317, 'Puyehue', 10, 't');
INSERT INTO "public"."comunas" VALUES (318, 'Río Negro', 10, 't');
INSERT INTO "public"."comunas" VALUES (319, 'San Juan de la Costa', 10, 't');
INSERT INTO "public"."comunas" VALUES (320, 'San Pablo', 10, 't');
INSERT INTO "public"."comunas" VALUES (321, 'Chaitén', 10, 't');
INSERT INTO "public"."comunas" VALUES (322, 'Futaleufú', 10, 't');
INSERT INTO "public"."comunas" VALUES (323, 'Hualaihué', 10, 't');
INSERT INTO "public"."comunas" VALUES (324, 'Palena', 10, 't');
INSERT INTO "public"."comunas" VALUES (325, 'Aisén', 11, 't');
INSERT INTO "public"."comunas" VALUES (326, 'Cisnes', 11, 't');
INSERT INTO "public"."comunas" VALUES (327, 'Guaitecas', 11, 't');
INSERT INTO "public"."comunas" VALUES (328, 'Cochrane', 11, 't');
INSERT INTO "public"."comunas" VALUES (329, 'O higgins', 11, 't');
INSERT INTO "public"."comunas" VALUES (330, 'Tortel', 11, 't');
INSERT INTO "public"."comunas" VALUES (331, 'Coihaique', 11, 't');
INSERT INTO "public"."comunas" VALUES (332, 'Lago Verde', 11, 't');
INSERT INTO "public"."comunas" VALUES (333, 'Chile Chico', 11, 't');
INSERT INTO "public"."comunas" VALUES (334, 'Río Ibáñez', 11, 't');
INSERT INTO "public"."comunas" VALUES (335, 'Antártica', 12, 't');
INSERT INTO "public"."comunas" VALUES (336, 'Cabo de Hornos', 12, 't');
INSERT INTO "public"."comunas" VALUES (337, 'Laguna Blanca', 12, 't');
INSERT INTO "public"."comunas" VALUES (338, 'Punta Arenas', 12, 't');
INSERT INTO "public"."comunas" VALUES (339, 'Río Verde', 12, 't');
INSERT INTO "public"."comunas" VALUES (340, 'San Gregorio', 12, 't');
INSERT INTO "public"."comunas" VALUES (341, 'Porvenir', 12, 't');
INSERT INTO "public"."comunas" VALUES (342, 'Primavera', 12, 't');
INSERT INTO "public"."comunas" VALUES (343, 'Timaukel', 12, 't');
INSERT INTO "public"."comunas" VALUES (344, 'Natales', 12, 't');
INSERT INTO "public"."comunas" VALUES (345, 'Torres del Paine', 12, 't');
INSERT INTO "public"."comunas" VALUES (283, 'Corral', 14, 't');
INSERT INTO "public"."comunas" VALUES (284, 'Lanco', 14, 't');
INSERT INTO "public"."comunas" VALUES (285, 'Los Lagos', 14, 't');
INSERT INTO "public"."comunas" VALUES (286, 'Máfil', 14, 't');
INSERT INTO "public"."comunas" VALUES (287, 'Mariquina', 14, 't');
INSERT INTO "public"."comunas" VALUES (288, 'Paillaco', 14, 't');
INSERT INTO "public"."comunas" VALUES (289, 'Panguipulli', 14, 't');
INSERT INTO "public"."comunas" VALUES (290, 'Valdivia', 14, 't');
INSERT INTO "public"."comunas" VALUES (291, 'Futrono', 14, 't');
INSERT INTO "public"."comunas" VALUES (292, 'La Unión', 14, 't');
INSERT INTO "public"."comunas" VALUES (293, 'Lago Ranco', 14, 't');
INSERT INTO "public"."comunas" VALUES (294, 'Río Bueno', 14, 't');
INSERT INTO "public"."comunas" VALUES (315, 'Puerto Octay', 10, 't');
INSERT INTO "public"."comunas" VALUES (247, 'San Ignacio', 8, 'f');
INSERT INTO "public"."comunas" VALUES (248, 'San Nicolás', 8, 'f');
INSERT INTO "public"."comunas" VALUES (249, 'Treguaco', 8, 'f');
INSERT INTO "public"."comunas" VALUES (250, 'Yungay', 8, 'f');

-- ----------------------------
-- Table structure for regiones
-- ----------------------------
DROP TABLE IF EXISTS "public"."regiones";
CREATE TABLE "public"."regiones" (
  "i_idregion" int8 NOT NULL,
  "v_nombre" varchar(255) COLLATE "pg_catalog"."default",
  "b_activo" bool DEFAULT true
)
;

-- ----------------------------
-- Records of regiones
-- ----------------------------
INSERT INTO "public"."regiones" VALUES (1, 'Tarapacá', 't');
INSERT INTO "public"."regiones" VALUES (2, 'Antofagasta', 't');
INSERT INTO "public"."regiones" VALUES (3, 'Atacama', 't');
INSERT INTO "public"."regiones" VALUES (4, 'Coquimbo', 't');
INSERT INTO "public"."regiones" VALUES (6, 'Libertador General Bernardo O Higgins', 't');
INSERT INTO "public"."regiones" VALUES (7, 'Maule', 't');
INSERT INTO "public"."regiones" VALUES (8, 'Biobío', 't');
INSERT INTO "public"."regiones" VALUES (9, 'La Araucanía', 't');
INSERT INTO "public"."regiones" VALUES (10, 'Los Lagos', 't');
INSERT INTO "public"."regiones" VALUES (11, 'Aisén del General Carlos Ibáñez del Campo', 't');
INSERT INTO "public"."regiones" VALUES (12, 'Magallanes y de la Antártica Chilena', 't');
INSERT INTO "public"."regiones" VALUES (14, 'Los Ríos', 't');
INSERT INTO "public"."regiones" VALUES (15, 'Arica y Parinacota', 't');
INSERT INTO "public"."regiones" VALUES (16, 'Ñuble', 't');
INSERT INTO "public"."regiones" VALUES (5, 'Valparaíso', 't');
INSERT INTO "public"."regiones" VALUES (13, 'Región Metropolitana de Santiago', 't');

-- ----------------------------
-- Table structure for votaciones
-- ----------------------------
DROP TABLE IF EXISTS "public"."votaciones";
CREATE TABLE "public"."votaciones" (
  "i_idvotacion" int4 NOT NULL DEFAULT nextval('votaciones_i_idvotacion_seq'::regclass),
  "v_nombres" varchar(255) COLLATE "pg_catalog"."default",
  "v_alias" varchar(255) COLLATE "pg_catalog"."default",
  "v_rut" varchar(255) COLLATE "pg_catalog"."default",
  "v_email" varchar(255) COLLATE "pg_catalog"."default",
  "i_idregion" int4,
  "i_idcomuna" int4,
  "i_idcandidato" int4,
  "v_nosotros" varchar(255) COLLATE "pg_catalog"."default",
  "t_creacion" timestamp(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of votaciones
-- ----------------------------
INSERT INTO "public"."votaciones" VALUES (5, 'Kevin Moreno', 'kev2san', '26.511.677-9', 'kevin770540@gmail.com', 13, 115, 1, 'WEB,TV,RRSS', '2023-07-31 19:04:52.554173');
INSERT INTO "public"."votaciones" VALUES (6, 'Kevin Moreno', 'kev2san', '18.485.695-6', 'kevin770540@gmail.com', 13, 115, 1, 'WEB,TV,RRSS', '2023-07-31 19:14:06.30552');
INSERT INTO "public"."votaciones" VALUES (7, 'Eduardo Pacheco', 'Eduar2s', '16.238.317-5', 'edu@gmail.com', 13, 348, 2, 'WEB,AMIGO', '2023-07-31 23:53:06.090069');
INSERT INTO "public"."votaciones" VALUES (8, 'Paula Ferrada', 'paula2ms', '15.578.892-5', 'pau@gmail.com', 14, 283, 4, 'TV,RRSS', '2023-07-31 23:57:22.799118');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."candidatos_i_idcandidato_seq"
OWNED BY "public"."candidatos"."i_idcandidato";
SELECT setval('"public"."candidatos_i_idcandidato_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."votaciones_i_idvotacion_seq"
OWNED BY "public"."votaciones"."i_idvotacion";
SELECT setval('"public"."votaciones_i_idvotacion_seq"', 8, true);

-- ----------------------------
-- Primary Key structure for table candidatos
-- ----------------------------
ALTER TABLE "public"."candidatos" ADD CONSTRAINT "candidatos_pkey" PRIMARY KEY ("i_idcandidato");

-- ----------------------------
-- Primary Key structure for table comunas
-- ----------------------------
ALTER TABLE "public"."comunas" ADD CONSTRAINT "comunas_pkey" PRIMARY KEY ("i_idcomuna");

-- ----------------------------
-- Primary Key structure for table regiones
-- ----------------------------
ALTER TABLE "public"."regiones" ADD CONSTRAINT "regiones_pkey" PRIMARY KEY ("i_idregion");

-- ----------------------------
-- Primary Key structure for table votaciones
-- ----------------------------
ALTER TABLE "public"."votaciones" ADD CONSTRAINT "votaciones_pkey" PRIMARY KEY ("i_idvotacion");

-- ----------------------------
-- Foreign Keys structure for table comunas
-- ----------------------------
ALTER TABLE "public"."comunas" ADD CONSTRAINT "region" FOREIGN KEY ("i_idregion") REFERENCES "public"."regiones" ("i_idregion") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table votaciones
-- ----------------------------
ALTER TABLE "public"."votaciones" ADD CONSTRAINT "candidato" FOREIGN KEY ("i_idcandidato") REFERENCES "public"."candidatos" ("i_idcandidato") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."votaciones" ADD CONSTRAINT "comuna" FOREIGN KEY ("i_idcomuna") REFERENCES "public"."comunas" ("i_idcomuna") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."votaciones" ADD CONSTRAINT "region" FOREIGN KEY ("i_idregion") REFERENCES "public"."regiones" ("i_idregion") ON DELETE NO ACTION ON UPDATE NO ACTION;
