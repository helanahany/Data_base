-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: student_attendance
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` char(5) DEFAULT NULL,
  `attendance_id` char(5) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('2030','100','1/1/2025','abs'),('2040','101','1/2/2025','non'),('2050','102','1/3/2025','abs'),('2060','103','1/4/2025','non'),('2070','104','1/5/2025','abs'),('2080','105','1/6/2025','non'),('2090','106','1/7/2025','non'),('3030','107','1/8/2025','abs'),('3040','108','1/9/2025','non'),('3050','109','1/10/2025','abs'),('3060','110','1/11/2025','abs');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `class_id` char(5) DEFAULT NULL,
  `class_name` varchar(20) DEFAULT NULL,
  `student_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES ('201','class a','2030'),('202','class b','2040'),('203','class c','2050'),('204','class d','2060'),('205','class e','2070'),('206','class f','2080'),('207','class g','2090'),('208','class h','3030'),('300','class i','3040'),('301','class j','3050'),('302','class k','3060');
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `std_id` char(5) DEFAULT NULL,
  `std_name` varchar(20) DEFAULT NULL,
  `class_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2030','AHMED','201'),('2040','MAI','202'),('2050','LOGY','203'),('2060','MINA','204'),('2070','HELANA','205'),('2080','OMAR','206'),('2090','JOLY','207'),('3030','MARIAM','208'),('3040','MERNA','300'),('3050','FELO','301'),('3060','HEDRA','302');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subject_id` char(5) DEFAULT NULL,
  `subject_name` varchar(20) DEFAULT NULL,
  `teacher_id` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('10s','Arabic','11t'),('11s','English','12t'),('12s','Mathematics','13t'),('13s','Science','14t'),('14s','Social Studies','15t'),('15s','Physics','16t'),('16s','Chemistry','17t'),('17s','Biology','18t'),('18s','History','19t'),('19s','Geography','20t'),('20s','Computer Science','21t'),('21s','Graphic Design','22t');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` char(5) DEFAULT NULL,
  `teacher_name` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('11t','nour mohamed','nour.mohamed@email.com'),('12t','laila hassan','laila.hassan@email.com'),('13t','omar khaled','omar.khaled@email.com'),('14t','saraibrahim','sara.ibrahim@email.com'),('15t','ziad ali','ziad.ali@email.com'),('16t','fatma mahmoud','fatma.mahmoud@email.com'),('17t','karim samir','karim.samir@email.com'),('18t','hodaabdelrahman','hoda.abdelrahman@email.com'),('19t','amina tarek','amina.tarek@email.com'),('20t','helana hany','helana.hany@email.com'),('21t','jojo  hany','jojo.hany@email.com'),('22t','bibo hany','bibo.hany@email.com');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
select std_name from student order by std_name ASC;
 SELECT student.std_name, attendance.date, attendance.status
FROM student JOIN attendance ON student.std_id = attendance.student_id
ORDER BY attendance.date DESC;
 select teacher.teacher_name,teacher.Email,subject.subject_name from subject join    teacher ON subject.teacher_id = teacher.teacher_id;
select * from subject where subject_name='Arabic';
SELECT
attendance.student_id,
COUNT(*) AS total_absent FROM attendancen WHERE
    status = 'abs' GROUP BY student_id;
    SELECT classroom.class_name, attendance.student_id,
attendance.date FROM attendance JOIN classroom ON attendance.student_id = classroom.student_id
 WHERE   attendance.status = 'abs';
  SELECT class_name, student_id FROM classroom;
  select * from subject;
  

-- Dump completed on 2025-05-15  0:57:49
