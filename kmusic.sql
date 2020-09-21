/*
Navicat MySQL Data Transfer

Source Server         : Root
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : kmusic

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2020-09-21 14:20:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_music
-- ----------------------------
DROP TABLE IF EXISTS `tb_music`;
CREATE TABLE `tb_music` (
  `name` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of tb_music
-- ----------------------------
INSERT INTO `tb_music` VALUES ('陈奕迅 - 你给我听好', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E9%99%88%E5%A5%95%E8%BF%85%20-%20%E4%BD%A0%E7%BB%99%E6%88%91%E5%90%AC%E5%A5%BD.mp3', '民谣');
INSERT INTO `tb_music` VALUES ('陈奕迅 - 倾城', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E9%99%88%E5%A5%95%E8%BF%85%20-%20%E5%80%BE%E5%9F%8E.mp3', '');
INSERT INTO `tb_music` VALUES ('陈奕迅 - 稳稳的幸福', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E9%99%88%E5%A5%95%E8%BF%85%20-%20%E7%A8%B3%E7%A8%B3%E7%9A%84%E5%B9%B8%E7%A6%8F.mp3', '');
INSERT INTO `tb_music` VALUES ('段奥娟 - 陪我长大', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%AE%B5%E5%A5%A5%E5%A8%9F%20-%20%E9%99%AA%E6%88%91%E9%95%BF%E5%A4%A7.mp3', '');
INSERT INTO `tb_music` VALUES ('华晨宇 - 假行僧', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%8D%8E%E6%99%A8%E5%AE%87%20-%20%E5%81%87%E8%A1%8C%E5%83%A7.mp3', '');
INSERT INTO `tb_music` VALUES ('华晨宇 - 齐天', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%8D%8E%E6%99%A8%E5%AE%87%20-%20%E9%BD%90%E5%A4%A9.mp3', '');
INSERT INTO `tb_music` VALUES ('华晨宇 - 齐天大圣', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%8D%8E%E6%99%A8%E5%AE%87%20-%20%E9%BD%90%E5%A4%A9%E5%A4%A7%E5%9C%A3.mp3', '');
INSERT INTO `tb_music` VALUES ('金志文 - 青春不一样', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E9%87%91%E5%BF%97%E6%96%87%20-%20%E9%9D%92%E6%98%A5%E4%B8%8D%E4%B8%80%E6%A0%B7.mp3', '');
INSERT INTO `tb_music` VALUES ('李健 - 春风十里不如你', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%9D%8E%E5%81%A5%20-%20%E6%98%A5%E9%A3%8E%E5%8D%81%E9%87%8C%E4%B8%8D%E5%A6%82%E4%BD%A0.mp3', '');
INSERT INTO `tb_music` VALUES ('李健,孙俪 - 风吹麦浪', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%9D%8E%E5%81%A5%2C%E5%AD%99%E4%BF%AA%20-%20%E9%A3%8E%E5%90%B9%E9%BA%A6%E6%B5%AA.mp3', '');
INSERT INTO `tb_music` VALUES ('毛不易 - 无问', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%AF%9B%E4%B8%8D%E6%98%93%20-%20%E6%97%A0%E9%97%AE.mp3', '');
INSERT INTO `tb_music` VALUES ('苏运莹 - 野子', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%8B%8F%E8%BF%90%E8%8E%B9%20-%20%E9%87%8E%E5%AD%90.mp3', '');
INSERT INTO `tb_music` VALUES ('万妮达 - Weekend', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E4%B8%87%E5%A6%AE%E8%BE%BE%20-%20Weekend.mp3', '');
INSERT INTO `tb_music` VALUES ('我们', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%88%91%E4%BB%AC.mp3', '');
INSERT INTO `tb_music` VALUES ('吴亦凡 - JULY', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%90%B4%E4%BA%A6%E5%87%A1%20-%20JULY.mp3', '');
INSERT INTO `tb_music` VALUES ('吴亦凡 - SKR', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%90%B4%E4%BA%A6%E5%87%A1%20-%20SKR.mp3', '');
INSERT INTO `tb_music` VALUES ('吴亦凡 - 刀剑如梦', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%90%B4%E4%BA%A6%E5%87%A1%20-%20%E5%88%80%E5%89%91%E5%A6%82%E6%A2%A6.mp3', '');
INSERT INTO `tb_music` VALUES ('吴亦凡 - 花房姑娘', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%90%B4%E4%BA%A6%E5%87%A1%20-%20%E8%8A%B1%E6%88%BF%E5%A7%91%E5%A8%98.mp3', '');
INSERT INTO `tb_music` VALUES ('五月天 - 倔强', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E4%BA%94%E6%9C%88%E5%A4%A9%20-%20%E5%80%94%E5%BC%BA.mp3', '');
INSERT INTO `tb_music` VALUES ('五月天 - 突然好想你', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E4%BA%94%E6%9C%88%E5%A4%A9%20-%20%E7%AA%81%E7%84%B6%E5%A5%BD%E6%83%B3%E4%BD%A0.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 城府', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E5%9F%8E%E5%BA%9C.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 断桥残雪', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E6%96%AD%E6%A1%A5%E6%AE%8B%E9%9B%AA.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 坏孩子 ', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E5%9D%8F%E5%AD%A9%E5%AD%90%20.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 灰色头像', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E7%81%B0%E8%89%B2%E5%A4%B4%E5%83%8F.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 玫瑰花的葬礼', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E7%8E%AB%E7%91%B0%E8%8A%B1%E7%9A%84%E8%91%AC%E7%A4%BC.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 情侣装 ', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E6%83%85%E4%BE%A3%E8%A3%85%20.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 认错 ', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E8%AE%A4%E9%94%99%20.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 天使', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E5%A4%A9%E4%BD%BF.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩 - 有何不可', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%20-%20%E6%9C%89%E4%BD%95%E4%B8%8D%E5%8F%AF.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩何曼婷 - 素颜', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%E4%BD%95%E6%9B%BC%E5%A9%B7%20-%20%E7%B4%A0%E9%A2%9C.mp3', '');
INSERT INTO `tb_music` VALUES ('许嵩石头剪子布 - 你若成风', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%AE%B8%E5%B5%A9%E7%9F%B3%E5%A4%B4%E5%89%AA%E5%AD%90%E5%B8%83%20-%20%E4%BD%A0%E8%8B%A5%E6%88%90%E9%A3%8E.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 背过手', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E8%83%8C%E8%BF%87%E6%89%8B.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 别', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E5%88%AB.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 渡', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E6%B8%A1.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 怪咖', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E6%80%AA%E5%92%96.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 狐狸', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E7%8B%90%E7%8B%B8.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 骆驼', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E9%AA%86%E9%A9%BC.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 那是你离开了北京的生活', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E9%82%A3%E6%98%AF%E4%BD%A0%E7%A6%BB%E5%BC%80%E4%BA%86%E5%8C%97%E4%BA%AC%E7%9A%84%E7%94%9F%E6%B4%BB.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 认真的雪', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E8%AE%A4%E7%9C%9F%E7%9A%84%E9%9B%AA.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 像风一样', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E5%83%8F%E9%A3%8E%E4%B8%80%E6%A0%B7.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 哑巴', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E5%93%91%E5%B7%B4.mp3', '');
INSERT INTO `tb_music` VALUES ('薛之谦 - 最好', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%96%9B%E4%B9%8B%E8%B0%A6%20-%20%E6%9C%80%E5%A5%BD.mp3', '');
INSERT INTO `tb_music` VALUES ('易烊千玺 - 宝贝', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E6%98%93%E7%83%8A%E5%8D%83%E7%8E%BA%20-%20%E5%AE%9D%E8%B4%9D.mp3', '');
INSERT INTO `tb_music` VALUES ('再见', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%86%8D%E8%A7%81.mp3', '');
INSERT INTO `tb_music` VALUES ('再也不会遇见第二个她', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%86%8D%E4%B9%9F%E4%B8%8D%E4%BC%9A%E9%81%87%E8%A7%81%E7%AC%AC%E4%BA%8C%E4%B8%AA%E5%A5%B9.mp3', '');
INSERT INTO `tb_music` VALUES ('张碧晨 - 下一秒', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E7%A2%A7%E6%99%A8%20-%20%E4%B8%8B%E4%B8%80%E7%A7%92.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Everything Will Say Goodbye', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Everything%20Will%20Say%20Goodbye.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Give You My World', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Give%20You%20My%20World.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Lost In The Stars', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Lost%20In%20The%20Stars.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Millionaire', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Millionaire.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Precious', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Precious.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Pretty White Lies', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Pretty%20White%20Lies.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - Stay In 谁赢', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20Stay%20In%20%E8%B0%81%E8%B5%A2.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - You\'re So Beautiful', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20You%27re%20So%20Beautiful.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 爱的传奇', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E7%88%B1%E7%9A%84%E4%BC%A0%E5%A5%87.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 风华正茂', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E9%A3%8E%E5%8D%8E%E6%AD%A3%E8%8C%82.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 会孤单', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E4%BC%9A%E5%AD%A4%E5%8D%95.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 骄傲的选择', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E9%AA%84%E5%82%B2%E7%9A%84%E9%80%89%E6%8B%A9.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 谜', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E8%B0%9C.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 年轻的战场', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E5%B9%B4%E8%BD%BB%E7%9A%84%E6%88%98%E5%9C%BA.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 如歌', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E5%A6%82%E6%AD%8C.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 微笑着胜利', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E5%BE%AE%E7%AC%91%E7%9D%80%E8%83%9C%E5%88%A9.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 我的舞台', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E6%88%91%E7%9A%84%E8%88%9E%E5%8F%B0.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 我想', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E6%88%91%E6%83%B3.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 越爱越强', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E8%B6%8A%E7%88%B1%E8%B6%8A%E5%BC%BA.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 - 只为美好', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20-%20%E5%8F%AA%E4%B8%BA%E7%BE%8E%E5%A5%BD.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰 莫文蔚 - 一念之间', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%20%E8%8E%AB%E6%96%87%E8%94%9A%20-%20%E4%B8%80%E5%BF%B5%E4%B9%8B%E9%97%B4.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰LOKEY低调组合 - FAST', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0LOKEY%E4%BD%8E%E8%B0%83%E7%BB%84%E5%90%88%20-%20FAST.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰谢娜 - 大手小手', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%E8%B0%A2%E5%A8%9C%20-%20%E5%A4%A7%E6%89%8B%E5%B0%8F%E6%89%8B.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰谢娜 - 娜样纯杰的爱恋', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%E8%B0%A2%E5%A8%9C%20-%20%E5%A8%9C%E6%A0%B7%E7%BA%AF%E6%9D%B0%E7%9A%84%E7%88%B1%E6%81%8B.mp3', '');
INSERT INTO `tb_music` VALUES ('张杰张碧晨 - 只要平凡', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E6%9D%B0%E5%BC%A0%E7%A2%A7%E6%99%A8%20-%20%E5%8F%AA%E8%A6%81%E5%B9%B3%E5%87%A1.mp3', '');
INSERT INTO `tb_music` VALUES ('张靓颖 李荣浩 - 女儿国', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E5%BC%A0%E9%9D%93%E9%A2%96%20%E6%9D%8E%E8%8D%A3%E6%B5%A9%20-%20%E5%A5%B3%E5%84%BF%E5%9B%BD.mp3', '');
INSERT INTO `tb_music` VALUES ('赵丽颖 - 十年', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/%E8%B5%B5%E4%B8%BD%E9%A2%96%20-%20%E5%8D%81%E5%B9%B4.mp3', '');

-- ----------------------------
-- Table structure for tb_photo
-- ----------------------------
DROP TABLE IF EXISTS `tb_photo`;
CREATE TABLE `tb_photo` (
  `P_name` varchar(255) NOT NULL,
  `P_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_photo
-- ----------------------------
INSERT INTO `tb_photo` VALUES ('cyx', 'music/img/cyx.jpg');
INSERT INTO `tb_photo` VALUES ('zj', 'music/img/zj.jpg');
INSERT INTO `tb_photo` VALUES ('lah', 'music/img/lah.jpg');
INSERT INTO `tb_photo` VALUES ('lahs', 'music/img/lash.jpg');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `tel` varchar(32) DEFAULT NULL,
  `head` varchar(500) DEFAULT NULL,
  `introduce` varchar(500) DEFAULT NULL,
  `sex` varchar(32) DEFAULT NULL,
  `birthday` varchar(32) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('aaa', '123456', '13460051696', null, '', null, '-', '北京市-北京市市辖区');
INSERT INTO `tb_users` VALUES ('admin', '123456', '11111111111', '', '段玉宛真是太好看了', null, '2007-11', '北京市-北京市市辖区');
INSERT INTO `tb_users` VALUES ('admin1', '123456', '12345678911', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/x1.jpg', null, null, 'null-null', 'null-null');
INSERT INTO `tb_users` VALUES ('admins', '123456', '18538751103', null, 'wadawd', null, '-', '北京市-北京市市辖区');
INSERT INTO `tb_users` VALUES ('dahuang', null, '12345678911', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/IMG_20160507_160204.jpg', '大黄是黄振昱', null, '-', '北京市-北京市市辖区');
INSERT INTO `tb_users` VALUES ('duanduan', '123456', '15713813034', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/2017%E5%B9%B4%E8%93%9D%E6%A1%A5%E8%BD%AF%E4%BB%B6%E5%AD%A6%E9%99%A2JavaSE%E8%80%83%E8%AF%95%E7%AC%AC%E4%B8%80%E5%86%8C.doc', '段段是个坏孩子', 'man', '1997-3', '河南省-南阳市');
INSERT INTO `tb_users` VALUES ('ningning', '1', '12345678911', 'http://ssss-999-1257238099.cos.ap-beijing.myqcloud.com/QQ%E5%9B%BE%E7%89%8720180809134252.jpg', '傻子段段', 'woman', '1997-8', '河南省-洛阳市');
INSERT INTO `tb_users` VALUES ('ys', '12345', '18538751108', null, null, null, null, null);
INSERT INTO `tb_users` VALUES ('zhuzhu', '1', '12345678911', null, null, null, null, null);
INSERT INTO `tb_users` VALUES ('张三', '123', '18538751108', null, null, null, null, null);
