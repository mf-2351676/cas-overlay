/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 192.168.138.101:3306
 Source Schema         : cas

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 30/07/2020 16:40:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for RegexRegisteredService
-- ----------------------------
DROP TABLE IF EXISTS `RegexRegisteredService`;
CREATE TABLE `RegexRegisteredService`  (
  `expression_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'regex',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_strategy` longblob NULL,
  `attribute_release` longblob NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation_order` int(11) NOT NULL,
  `expiration_policy` longblob NULL,
  `informationUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logout_type` int(11) NULL DEFAULT NULL,
  `logout_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mfa_policy` longblob NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `privacyUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `proxy_policy` longblob NULL,
  `public_key` longblob NULL,
  `required_handlers` longblob NULL,
  `responseType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `serviceId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username_attr` longblob NULL,
  `bypassApprovalPrompt` bit(1) NULL DEFAULT NULL,
  `clientId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clientSecret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `generateRefreshToken` bit(1) NULL DEFAULT NULL,
  `jsonFormat` bit(1) NULL DEFAULT NULL,
  `supported_grants` longblob NULL,
  `supported_responses` longblob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of RegexRegisteredService
-- ----------------------------
INSERT INTO `RegexRegisteredService` VALUES ('oauth', 1, 0xACED00057372003E6F72672E61706572656F2E6361732E73657276696365732E44656661756C745265676973746572656453657276696365416363657373537472617465677911481ECA56280FAD0200095A000F63617365496E73656E7369746976655A0007656E61626C65644900056F726465725A001472657175697265416C6C417474726962757465735A000A73736F456E61626C65644C001D64656C65676174656441757468656E7469636174696F6E506F6C6963797400484C6F72672F61706572656F2F6361732F73657276696365732F526567697374657265645365727669636544656C65676174656441757468656E7469636174696F6E506F6C6963793B4C001272656A65637465644174747269627574657374000F4C6A6176612F7574696C2F4D61703B4C001272657175697265644174747269627574657371007E00024C0017756E617574686F72697A6564526564697265637455726C74000E4C6A6176612F6E65742F5552493B787000010000000001017372004D6F72672E61706572656F2E6361732E73657276696365732E44656661756C74526567697374657265645365727669636544656C65676174656441757468656E7469636174696F6E506F6C696379F51E4ADD54EE14150200014C0010616C6C6F77656450726F7669646572737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000013F4000000000000078737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000077080000001000000000787371007E000B3F40000000000000770800000010000000007870, 0xACED0005737200376F72672E61706572656F2E6361732E73657276696365732E52657475726E416C6C41747472696275746552656C65617365506F6C6963794C9857A8519E9663020000787200476F72672E61706572656F2E6361732E73657276696365732E4162737472616374526567697374657265645365727669636541747472696275746552656C65617365506F6C69637949E7D6736C9B14070200085A002B617574686F72697A6564546F52656C6561736541757468656E7469636174696F6E417474726962757465735A0025617574686F72697A6564546F52656C6561736543726564656E7469616C50617373776F72645A0026617574686F72697A6564546F52656C6561736550726F78794772616E74696E675469636B65745A00186578636C75646544656661756C74417474726962757465734C000F61747472696275746546696C74657274003A4C6F72672F61706572656F2F6361732F73657276696365732F526567697374657265645365727669636541747472696275746546696C7465723B4C000D636F6E73656E74506F6C6963797400384C6F72672F61706572656F2F6361732F73657276696365732F5265676973746572656453657276696365436F6E73656E74506F6C6963793B4C001D7072696E636970616C417474726962757465735265706F7369746F72797400474C6F72672F61706572656F2F6361732F61757468656E7469636174696F6E2F7072696E636970616C2F5072696E636970616C417474726962757465735265706F7369746F72793B4C00147072696E636970616C49644174747269627574657400124C6A6176612F6C616E672F537472696E673B78700100000070737200456F72672E61706572656F2E6361732E73657276696365732E636F6E73656E742E44656661756C745265676973746572656453657276696365436F6E73656E74506F6C696379D989A11ED4BF7F490200035A0007656E61626C65644C00126578636C756465644174747269627574657374000F4C6A6176612F7574696C2F5365743B4C0015696E636C7564654F6E6C794174747269627574657371007E000878700170707372004C6F72672E61706572656F2E6361732E61757468656E7469636174696F6E2E7072696E636970616C2E44656661756C745072696E636970616C417474726962757465735265706F7369746F7279C10F2B28725FAA83020000787200536F72672E61706572656F2E6361732E61757468656E7469636174696F6E2E7072696E636970616C2E63616368652E41627374726163745072696E636970616C417474726962757465735265706F7369746F727958209AC4A40630620200034A000A65787069726174696F6E4C000F6D657267696E6753747261746567797400654C6F72672F61706572656F2F6361732F61757468656E7469636174696F6E2F7072696E636970616C2F63616368652F41627374726163745072696E636970616C417474726962757465735265706F7369746F7279244D657267696E6753747261746567793B4C000874696D65556E697471007E00057870000000000000000270740005484F55525370, NULL, 0, 0xACED0005737200406F72672E61706572656F2E6361732E73657276696365732E44656661756C74526567697374657265645365727669636545787069726174696F6E506F6C69637946DE79AC198D3CCC0200035A001164656C6574655768656E457870697265645A00116E6F746966795768656E44656C657465644C000E65787069726174696F6E446174657400124C6A6176612F6C616E672F537472696E673B7870000070, NULL, NULL, 1, NULL, 0xACED0005737200416F72672E61706572656F2E6361732E73657276696365732E44656661756C7452656769737465726564536572766963654D756C7469666163746F72506F6C696379D56AE2DD8859733F0200055A000D627970617373456E61626C65644C000B6661696C7572654D6F64657400494C6F72672F61706572656F2F6361732F73657276696365732F52656769737465726564536572766963654D756C7469666163746F72506F6C696379244661696C7572654D6F6465733B4C00226D756C7469666163746F7241757468656E7469636174696F6E50726F76696465727374000F4C6A6176612F7574696C2F5365743B4C001D7072696E636970616C4174747269627574654E616D65547269676765727400124C6A6176612F6C616E672F537472696E673B4C001E7072696E636970616C41747472696275746556616C7565546F4D6174636871007E00037870007E7200476F72672E61706572656F2E6361732E73657276696365732E52656769737465726564536572766963654D756C7469666163746F72506F6C696379244661696C7572654D6F64657300000000000000001200007872000E6A6176612E6C616E672E456E756D000000000000000012000078707400074E4F545F534554737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000013F40000000000000787070, 'login', NULL, 0xACED00057372003A6F72672E61706572656F2E6361732E73657276696365732E526566757365526567697374657265645365727669636550726F7879506F6C696379B0A4006EC358E6540200007870, NULL, 0xACED0005737200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000013F4000000000000078, NULL, '^(https|imaps|http)://.*', NULL, 0xACED0005737200406F72672E61706572656F2E6361732E73657276696365732E44656661756C745265676973746572656453657276696365557365726E616D6550726F766964657250D2F74625996157020000787200466F72672E61706572656F2E6361732E73657276696365732E426173655265676973746572656453657276696365557365726E616D6541747472696275746550726F76696465728BAFBA9C775638710200025A000F656E6372797074557365726E616D654C001463616E6F6E6963616C697A6174696F6E4D6F64657400124C6A6176612F6C616E672F537472696E673B7870007400044E4F4E45, b'1', '100015', '100015', b'0', b'1', 0xACED0005737200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000013F4000000000000078, 0xACED0005737200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000013F4000000000000078);

-- ----------------------------
-- Table structure for RegexRegisteredServiceProperty
-- ----------------------------
DROP TABLE IF EXISTS `RegexRegisteredServiceProperty`;
CREATE TABLE `RegexRegisteredServiceProperty`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_values` longblob NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RegisteredServiceImplContact
-- ----------------------------
DROP TABLE IF EXISTS `RegisteredServiceImplContact`;
CREATE TABLE `RegisteredServiceImplContact`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RegisteredServiceImpl_Props
-- ----------------------------
DROP TABLE IF EXISTS `RegisteredServiceImpl_Props`;
CREATE TABLE `RegisteredServiceImpl_Props`  (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `properties_id` bigint(20) NOT NULL,
  `properties_KEY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`, `properties_KEY`) USING BTREE,
  UNIQUE INDEX `UK_i2mjaqjwxpvurc6aefjkx5x97`(`properties_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for RegisteredService_Contacts
-- ----------------------------
DROP TABLE IF EXISTS `RegisteredService_Contacts`;
CREATE TABLE `RegisteredService_Contacts`  (
  `AbstractRegisteredService_id` bigint(20) NOT NULL,
  `contacts_id` bigint(20) NOT NULL,
  `contacts_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`AbstractRegisteredService_id`, `contacts_ORDER`) USING BTREE,
  UNIQUE INDEX `UK_s7mf4a23wejqx62tt4vh3tgwi`(`contacts_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cas_role
-- ----------------------------
DROP TABLE IF EXISTS `cas_role`;
CREATE TABLE `cas_role`  (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cas_role
-- ----------------------------
INSERT INTO `cas_role` VALUES (1, '测试管');
INSERT INTO `cas_role` VALUES (2, '学生');

-- ----------------------------
-- Table structure for cas_user
-- ----------------------------
DROP TABLE IF EXISTS `cas_user`;
CREATE TABLE `cas_user`  (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cas_user
-- ----------------------------
INSERT INTO `cas_user` VALUES (1, 'admin', 'b6012498dcc5df4d633ed6d0a161e0ab', '测试管');
INSERT INTO `cas_user` VALUES (123, 'user', '26a3b4aae0f3cb836084325058cc0717', '测试玩');

-- ----------------------------
-- Table structure for user_role_info
-- ----------------------------
DROP TABLE IF EXISTS `user_role_info`;
CREATE TABLE `user_role_info`  (
  `user_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role_info
-- ----------------------------
INSERT INTO `user_role_info` VALUES (1, 1);
INSERT INTO `user_role_info` VALUES (1, 2);

SET FOREIGN_KEY_CHECKS = 1;
