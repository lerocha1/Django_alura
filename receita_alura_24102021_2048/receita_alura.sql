-- MySQL dump 10.16  Distrib 10.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: receita_alura
-- ------------------------------------------------------
-- Server version	10.1.41-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

--
-- Table structure for table `auth_group_permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

--
-- Table structure for table `auth_permission`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add receita',1,'add_receita'),(2,'Can change receita',1,'change_receita'),(3,'Can delete receita',1,'delete_receita'),(4,'Can view receita',1,'view_receita'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add pessoa',8,'add_pessoa'),(30,'Can change pessoa',8,'change_pessoa'),(31,'Can delete pessoa',8,'delete_pessoa'),(32,'Can view pessoa',8,'view_pessoa');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

--
-- Table structure for table `auth_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$RwOvII4bcDgKilWWJa3hvI$gS0w0t+x8gCCfyGzlDxxMoNbUEzzve1cBpPGjGXUYN4=','2021-10-24 22:04:58.842372',1,'admin','','','',1,1,'2021-10-24 22:04:53.373079');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

--
-- Table structure for table `auth_user_groups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

--
-- Table structure for table `auth_user_user_permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

--
-- Table structure for table `django_admin_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-10-24 22:06:37.973736','1','Receita object (1)',2,'[{\"changed\": {\"fields\": [\"Ingredientes\"]}}]',1,1),(2,'2021-10-24 22:27:47.505721','2','Receita object (2)',1,'[{\"added\": {}}]',1,1),(4,'2021-10-24 22:30:39.448021','3','Receita object (3)',1,'[{\"added\": {}}]',1,1),(5,'2021-10-24 22:32:01.282777','4','Receita object (4)',1,'[{\"added\": {}}]',1,1),(6,'2021-10-24 22:33:31.401027','5','Receita object (5)',1,'[{\"added\": {}}]',1,1),(7,'2021-10-24 22:39:59.491050','1','Pessoa object (1)',1,'[{\"added\": {}}]',8,1),(8,'2021-10-24 22:40:10.144208','2','Pessoa object (2)',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

--
-- Table structure for table `django_content_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(8,'pessoas','pessoa'),(1,'receitas','receita'),(7,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

--
-- Table structure for table `django_migrations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-24 22:01:20.908817'),(2,'auth','0001_initial','2021-10-24 22:01:21.678128'),(3,'admin','0001_initial','2021-10-24 22:01:21.844903'),(4,'admin','0002_logentry_remove_auto_add','2021-10-24 22:01:21.854849'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-24 22:01:21.863912'),(6,'contenttypes','0002_remove_content_type_name','2021-10-24 22:01:21.963058'),(7,'auth','0002_alter_permission_name_max_length','2021-10-24 22:01:22.035392'),(8,'auth','0003_alter_user_email_max_length','2021-10-24 22:01:22.107626'),(9,'auth','0004_alter_user_username_opts','2021-10-24 22:01:22.117491'),(10,'auth','0005_alter_user_last_login_null','2021-10-24 22:01:22.167526'),(11,'auth','0006_require_contenttypes_0002','2021-10-24 22:01:22.172727'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-24 22:01:22.181694'),(13,'auth','0008_alter_user_username_max_length','2021-10-24 22:01:22.250299'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-24 22:01:22.329222'),(15,'auth','0010_alter_group_name_max_length','2021-10-24 22:01:22.399812'),(16,'auth','0011_update_proxy_permissions','2021-10-24 22:01:22.411190'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-24 22:01:22.483327'),(18,'receitas','0001_initial','2021-10-24 22:01:22.521631'),(19,'receitas','0002_alter_receita_id','2021-10-24 22:01:22.528672'),(20,'sessions','0001_initial','2021-10-24 22:01:22.582083'),(21,'pessoas','0001_initial','2021-10-24 22:38:38.165774');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

--
-- Table structure for table `django_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f87mqt8bpaosu1ye2rk31i7cmjg53pk8','.eJxVjEEOwiAQRe_C2hBgBpy4dO8ZmqEMUjWQlHbVeHdt0oVu_3vvb2rgdSnD2mUepqQuyqrT7xZ5fErdQXpwvTc9trrMU9S7og_a9a0leV0P9--gcC_fOocQUjLGAOeQvRcG61Ccd8EKIYjPCCNCFGIgF5GALBoRIkxnl9X7A9G_N0M:1melbu:P5P90nn209QKauHfYusUdcQlEDr2bmsOPCSGrGrpVo0','2021-11-07 22:04:58.847934');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

--
-- Table structure for table `pessoas_pessoa`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas_pessoa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas_pessoa`
--

/*!40000 ALTER TABLE `pessoas_pessoa` DISABLE KEYS */;
INSERT INTO `pessoas_pessoa` VALUES (1,'Leandro','leandro@brasilciclismo.com.br'),(2,'Vivian','teste@gmail.com');
/*!40000 ALTER TABLE `pessoas_pessoa` ENABLE KEYS */;

--
-- Table structure for table `receitas_receita`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receitas_receita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_receita` varchar(200) NOT NULL,
  `ingredientes` longtext NOT NULL,
  `modo_preparo` longtext NOT NULL,
  `tempo_preparo` int(11) NOT NULL,
  `rendimento` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `date_receita` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas_receita`
--

/*!40000 ALTER TABLE `receitas_receita` DISABLE KEYS */;
INSERT INTO `receitas_receita` VALUES (1,'Bolo de Cenoura','3 Cenouras médias;\r\n4 Ovos;\r\n400g de Farinha de Trigo;\r\n2,5 Xicaras de açúcar;\r\n2 colher de Mantega;\r\n2 colher de Nescau;\r\n2 xicaras de leite;','Picar as Cenouras\r\nSeparar Clara do ovo da Gema;\r\nBater Clara até se tornar neve!\r\nMisturas os seguintes ingredientes:\r\n* Cenoura picada\r\n* 4 gemas\r\n*Toda Farinha\r\n* 1 colher de mantega;\r\n*2 Xicaras de açucar \r\n\r\nBater no liguidificador.\r\nMisturar com a Clara em Neve;\r\n\r\nCobertura\r\ncolocar o Nescau, 0,5 xicara de açicar e 1 colher de mantega em uma panela.\r\n\r\nAssar bolo por 40 minutos',55,'12','Bolos','2021-10-24 22:23:41.000000'),(3,'Brigadeiro de colher','1 Lata de Leite condensado\r\n1 colher de mantega\r\n2 colheres de Nescau','Colocar tudo em uma panela ao fogo médio\r\n\r\nMexer até o fundo não grudar mais\r\n\r\n\r\nColocar em um prato e saborear',15,'4 pessoas','Doces','2021-10-24 22:29:04.000000'),(4,'Miojo','Miojo Nissin\r\nÁgua quente','Ferver Água\r\nColocar miojo por 3 minutos',5,'1 pessoa','Sopas','2021-10-24 22:31:06.000000'),(5,'Carne da Churrascaria','Carro\r\nDinheiro\r\nBoa churrascaria','Pegar o carro\r\n\r\nIr até a churrascaria\r\n\r\nComer carne',70,'1 pessoa','Churrasco','2021-10-24 22:32:33.000000');
/*!40000 ALTER TABLE `receitas_receita` ENABLE KEYS */;

--
-- Dumping routines for database 'receita_alura'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-24 20:48:11
