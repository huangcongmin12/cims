/*
Navicat MySQL Data Transfer

Source Server         : huang
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : cims

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2013-06-07 22:08:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classroom`
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` bigint(20) NOT NULL auto_increment,
  `alias` varchar(20) default NULL,
  `building` varchar(10) NOT NULL,
  `containment` int(11) default NULL,
  `floor` int(11) default NULL,
  `isMultimedia` int(11) default NULL,
  `number` varchar(5) NOT NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('9', '1-102', '1', '60', '1', '0', '02', '0');
INSERT INTO `classroom` VALUES ('10', '1-103', '1', '60', '1', '0', '03', '0');
INSERT INTO `classroom` VALUES ('11', '1-104', '1', '60', '1', '0', '04', '0');
INSERT INTO `classroom` VALUES ('12', '1-105', '1', '60', '1', '0', '05', '0');
INSERT INTO `classroom` VALUES ('13', '1-201', '1', '60', '2', '0', '01', '0');
INSERT INTO `classroom` VALUES ('14', '1-106', '1', '60', '1', '0', '06', '0');
INSERT INTO `classroom` VALUES ('15', '1-107', '1', '60', '1', '0', '07', '0');

-- ----------------------------
-- Table structure for `classroommanager`
-- ----------------------------
DROP TABLE IF EXISTS `classroommanager`;
CREATE TABLE `classroommanager` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` varchar(20) default NULL,
  `lastIp` varchar(10) default NULL,
  `lastTime` datetime default NULL,
  `managerNumber` varchar(20) default NULL,
  `name` varchar(30) default NULL,
  `password` varchar(30) NOT NULL,
  `role` int(11) default NULL,
  `sex` int(11) default NULL,
  `status` int(11) default NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroommanager
-- ----------------------------
INSERT INTO `classroommanager` VALUES ('1', '11asas@163.com', null, '2013-05-18 15:50:26', null, null, 'aaa123', '2', '1', '0', 'admin12');
INSERT INTO `classroommanager` VALUES ('2', '11asas@163.com', null, '2013-05-18 15:51:15', null, null, 'abcdef', '2', '1', '0', 'admin12');
INSERT INTO `classroommanager` VALUES ('3', '11asas@163.com', null, '2013-05-18 15:51:20', null, null, 'aaa123', '2', '1', '0', 'admin12');
INSERT INTO `classroommanager` VALUES ('4', '11asas@163.com', null, '2013-05-18 15:51:23', null, null, 'aaa123', '2', '1', '0', 'admin12');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL auto_increment,
  `alias` varchar(20) default NULL,
  `courseName` varchar(60) NOT NULL,
  `courseNumber` varchar(20) default NULL,
  `endWeek` int(11) default NULL,
  `schoolTime` int(11) default NULL,
  `startWeek` int(11) default NULL,
  `week` int(11) default NULL,
  `classroom_id` bigint(20) default NULL,
  `teacher_id` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKAF42E01B723B0885` (`classroom_id`),
  KEY `FKAF42E01BAB63D8E5` (`teacher_id`),
  CONSTRAINT `FKAF42E01B723B0885` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  CONSTRAINT `FKAF42E01BAB63D8E5` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('3', '高等数学', '高等数学', '20130301009', '20', '1', '2', '4', '12', '13');
INSERT INTO `course` VALUES ('4', '高雅音乐', '高雅音乐', '20130301011', '14', '4', '1', '5', '10', '6');
INSERT INTO `course` VALUES ('5', '大学物理', '大学物理', '20130301010', '18', '3', '2', '3', '11', '7');
INSERT INTO `course` VALUES ('6', '嵌入式技术', '嵌入式技术', '20130301012', '18', '1', '2', '3', '9', '12');
INSERT INTO `course` VALUES ('7', '某课一', '某课一', '20130301001', '13', '3', '2', '1', '10', '10');
INSERT INTO `course` VALUES ('8', '某课二', '某课二', '20130301002', '20', '1', '3', '1', '10', '9');
INSERT INTO `course` VALUES ('9', '某课二', '某课二', '20130301013', '18', '1', '2', '3', '15', '6');

-- ----------------------------
-- Table structure for `link`
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(11) NOT NULL auto_increment,
  `description` varchar(255) default NULL,
  `name` varchar(50) NOT NULL,
  `rank` int(11) default NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link
-- ----------------------------
INSERT INTO `link` VALUES ('2', '广西大学', '广西大学', '100', 'http://www.gxu.edu.cn');
INSERT INTO `link` VALUES ('3', '计算机与电子信息学院', '计算机与电子信息学院', '10', 'http://www.ccie.gxu.edu.cn/');
INSERT INTO `link` VALUES ('4', '计算机与电子信息学院', '计算机与电子信息学院', '90', 'http://www.ccie.gxu.edu.cn/');
INSERT INTO `link` VALUES ('5', '计算机与电子信息学院', '计算机与电子信息学院', '90', 'http://www.ccie.gxu.edu.cn/');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` bigint(20) NOT NULL auto_increment,
  `email` varchar(20) default NULL,
  `lastIp` varchar(20) default NULL,
  `lastTime` datetime default NULL,
  `managerNumber` varchar(30) default NULL,
  `password` varchar(30) NOT NULL,
  `role` int(11) default NULL,
  `status` int(11) default NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '11asas@163.com', '127.0.0.1', '2013-06-06 00:33:16', '130001', '123456', '1', '0', 'huangcongmin');
INSERT INTO `manager` VALUES ('2', '11asas@163.com', null, null, '130002', 'admin123', '0', '0', 'admin');
INSERT INTO `manager` VALUES ('3', '11asas@163.com', null, null, '130003', 'manager123', '0', '0', 'manager');
INSERT INTO `manager` VALUES ('4', '11asas@163.com', '127.0.0.1', '2013-06-06 12:18:00', '130004', 'test', '5', '0', 'test');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL auto_increment,
  `classes` varchar(50) default NULL,
  `department` varchar(30) default NULL,
  `email` varchar(20) default NULL,
  `grade` varchar(10) default NULL,
  `lastIp` varchar(20) default NULL,
  `lastTime` datetime default NULL,
  `name` varchar(25) default NULL,
  `password` varchar(30) NOT NULL,
  `role` int(11) default NULL,
  `sex` int(11) default NULL,
  `status` int(11) default NULL,
  `studentNumber` varchar(20) NOT NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('7', '专业一102班', '学院一', '1663534341@qq.com', '2010级', '127.0.0.1', '2013-06-06 12:26:45', '小明一', '123', null, '0', '0', '013060001', 'test');
INSERT INTO `student` VALUES ('9', '专业二101班', '学院二', '16635424162@qq.com', '2010级', null, null, '小明二', '00000', '3', '0', '0', '013060002', 'sas');
INSERT INTO `student` VALUES ('11', '专业一102班', '学院一', '1211a2@qq.com', '2010级', null, null, '小明三', '00000', '3', '0', '0', '013060003', 'sdsd');
INSERT INTO `student` VALUES ('13', '专业一102班', '学院一', '1663524162@qq.com', '2010级', null, null, '小明四', '00000', '3', '1', '0', '013060004', 'wangxiaoer');
INSERT INTO `student` VALUES ('14', '专业二102班', '学院一', '1211a2@qq.com', '2010级', null, null, '小李一', '00000', '3', '0', '0', '013060005', 'sad');
INSERT INTO `student` VALUES ('15', '专业三102班', '学院一', '1663524162@qq.com', '2010级', null, null, '小李二', '00000', '3', '0', '0', '013060006', 'sdasd23');
INSERT INTO `student` VALUES ('16', '专业一102班', '学院三', '1663524162@qq.com', '2010级', null, null, '小李三', '00000', '3', '0', '0', '013060007', 'dsdasadas');
INSERT INTO `student` VALUES ('17', '专业四102班', '学院四', '1663524162@qq.com', '2010级', null, null, '小王一', '00000', '3', '0', '0', '013060008', 'dsadasd');
INSERT INTO `student` VALUES ('18', '专业一102班', '学院一', '121121212@qq.com', '2011级', null, null, '小六一', '00000', '3', '0', '0', '013060009', 'fdsf');
INSERT INTO `student` VALUES ('19', '专业一102班', '学院五', '1663521162@qq.com', '2010级', null, null, '小二一', '00000', '3', '0', '0', '013060010', 'dsfsd');
INSERT INTO `student` VALUES ('21', '专业五101班', '学院一', '12112@qq.com', '2010级', null, null, '小二王', '00000', '3', '0', '0', '013060011', 'je2k');
INSERT INTO `student` VALUES ('22', '专业一102班', '学院二', '121121212@qq.com', '2010级', null, null, '王小三', '00000', '3', '0', '0', '013060012', 'sdas23d');
INSERT INTO `student` VALUES ('23', '专业一102班', '学院一', '12112@qq.com', '2010级', null, null, '赵小五', '00000', '3', '0', '0', '013060013', 'asdad');
INSERT INTO `student` VALUES ('24', '专业一102班', '学院一', '1663524162@qq.com', '2009级', null, null, '钱朵朵', '00000', '3', '0', '0', '013060014', 'sfdsfdsd');
INSERT INTO `student` VALUES ('25', '专业一102班', '学院一', '1663524162@qq.com', '2009级', null, null, '钱花花', '00000', '3', '0', '0', '013060015', 'sdfsf');
INSERT INTO `student` VALUES ('26', '专业一102班', '学院一', '1663524162@qq.com', '2010级', null, null, '周虎虎', '00000', '3', '0', '0', '013060016', 'sdfee');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL auto_increment,
  `department` varchar(30) default NULL,
  `email` varchar(25) default NULL,
  `lastIp` varchar(10) default NULL,
  `lastTime` datetime default NULL,
  `name` varchar(30) default NULL,
  `password` varchar(30) NOT NULL,
  `role` int(11) default NULL,
  `sex` int(11) default NULL,
  `status` int(11) default NULL,
  `teacherNumber` varchar(20) default NULL,
  `title` varchar(10) default NULL,
  `userName` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('6', '学院一', 'zhangyi@168.com', null, null, '张一', 'zhangyi', null, '0', '0', '201306001', '教授', 'zhangyi');
INSERT INTO `teacher` VALUES ('7', '学院二', '1212@qq.com', null, null, '张二', 'zhanger', null, '0', '0', '201306002', '教授', 'zhanger');
INSERT INTO `teacher` VALUES ('8', '学院三', '1212@qq.com', null, null, '张三', 'zhangsan', null, '0', '0', '201306003', '教授', 'zhangsan');
INSERT INTO `teacher` VALUES ('9', '学院四', '1212@qq.com', null, null, '李一', 'liyi', '4', '0', '0', '201306005', '教授', 'liyi');
INSERT INTO `teacher` VALUES ('10', '学院一', '1212@qq.com', null, null, '李五', '123213', '4', '1', '0', '201306006', '教授', 'liwu');
INSERT INTO `teacher` VALUES ('11', '学院二', '1212@qq.com', null, null, '李六', 'qawqw', null, '1', '0', '201306004', '教授', 'liliu');
INSERT INTO `teacher` VALUES ('12', '学院四', 'chnj@gmail.com', null, null, '王一', '657576', null, '0', '0', '201306007', '教授', 'wangyi');
INSERT INTO `teacher` VALUES ('13', '学院二', 'chnj@gmail.com', null, null, '王午', '657576', null, '0', '0', '201306008', '教授', 'wangwu');
INSERT INTO `teacher` VALUES ('14', '学院三', '1212@qq.com', null, null, '王七', 'abcdef', null, '0', '0', '201306009', '教授', 'wangqi');
INSERT INTO `teacher` VALUES ('16', '学院四', '1212@qq.com', null, null, '王酒', 'abcdef', null, '0', '0', '201306010', '副教授', 'wangjiu');
